import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unfold_ai_app/core/errors/failure.dart';
import 'package:unfold_ai_app/core/usecases/usecase.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/domain/usecases/get_biometric_data.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// Dashboard Bloc to manage the dashboard state and events.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  /// Constructor for the Dashboard Bloc.
  DashboardBloc({
    required GetBiometricData getBiometricData,
    required GetJournalEntries getJournalEntries,
  })  : _getBiometricData = getBiometricData,
        _getJournalEntries = getJournalEntries,
        super(DashboardState.initial(selectedRange: ChartRange.sevenDays)) {
    on<_ChangeRange>(_onChangeRange);
    on<_LoadData>(_onLoadData);
    on<_Retry>(_onRetry);
    on<_ToggleLargeDataset>(_onToggleLargeDataset);
  }

  /// Get Biometric Data.
  final GetBiometricData _getBiometricData;

  /// Get Journal Entries.
  final GetJournalEntries _getJournalEntries;

  String _mapFailureToMessage(Failure failure) {
    return failure.when(
      serverFailure: (message) => 'Server error: $message',
      cacheFailure: (message) => 'Cache error: $message',
      networkFailure: (message) => 'Network error: $message',
      dataFailure: (message) => 'Data error: $message',
    );
  }

  Future<void> _onChangeRange(
    _ChangeRange event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      emit(DashboardState.loading(selectedRange: event.range));

      final biometricResult = await _getBiometricData(
        GetBiometricDataParams(
          range: event.range,
          useLargeDataset: state.showLargeDataset,
        ),
      );

      final journalResult = await _getJournalEntries(
        GetJournalEntriesParams(
          range: event.range,
        ),
      );

      // Process biometric result
      final biometricData = await biometricResult.fold(
        (failure) async {
          emit(
            DashboardState.error(
              message: _mapFailureToMessage(failure),
              selectedRange: event.range,
            ),
          );
          return null;
        },
        (data) async {
          return data;
        },
      );

      // If biometric failed, don't proceed
      if (biometricData == null) return;

      // Process journal result
      await journalResult.fold(
        (failure) async {
          emit(
            DashboardState.error(
              message: _mapFailureToMessage(failure),
              selectedRange: state.selectedRange,
            ),
          );
        },
        (journalEntries) async {
          emit(
            DashboardState.loaded(
              biometricData: biometricData,
              journalEntries: journalEntries,
              selectedRange: event.range,
              showLargeDataset: state.showLargeDataset,
            ),
          );
        },
      );
    } on Exception catch (e) {
      emit(
        DashboardState.error(
          message: 'Unexpected error: $e',
          selectedRange: state.selectedRange,
        ),
      );
    }
  }

  Future<void> _onLoadData(
    _LoadData event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardState.loading(selectedRange: event.range));

    try {
      // Load biometric data
      final biometricResult = await _getBiometricData(
        GetBiometricDataParams(
          range: event.range,
          useLargeDataset: false,
        ),
      );

      // Load journal data
      final journalResult = await _getJournalEntries(
        GetJournalEntriesParams(
          range: event.range,
        ),
      );

      // Process biometric result
      final biometricData = await biometricResult.fold(
        (failure) async {
          emit(
            DashboardState.error(
              message: _mapFailureToMessage(failure),
              selectedRange: state.selectedRange,
            ),
          );
          return null;
        },
        (data) async {
          return data;
        },
      );

      // If biometric failed, don't proceed
      if (biometricData == null) return;

      // Process journal result
      await journalResult.fold(
        (failure) async {
          emit(
            DashboardState.error(
              message: _mapFailureToMessage(failure),
              selectedRange: state.selectedRange,
            ),
          );
        },
        (journalEntries) async {
          emit(
            DashboardState.loaded(
              biometricData: biometricData,
              journalEntries: journalEntries,
              selectedRange: event.range,
              showLargeDataset: false,
            ),
          );
        },
      );
    } on Exception catch (e) {
      emit(
        DashboardState.error(
          message: 'Unexpected error: $e',
          selectedRange: state.selectedRange,
        ),
      );
    }
  }

  Future<void> _onRetry(
    _Retry event,
    Emitter<DashboardState> emit,
  ) async {
    add(DashboardEvent.loadData(range: state.selectedRange));
  }

  Future<void> _onToggleLargeDataset(
    _ToggleLargeDataset event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      emit(DashboardState.loading(selectedRange: state.selectedRange));
      final biometricResult = await _getBiometricData(
        GetBiometricDataParams(
          range: state.selectedRange,
          useLargeDataset: !state.showLargeDataset,
        ),
      );

      // For toggle, we only need biometric data, not journal data
      await biometricResult.fold(
        (failure) async {
          emit(
            DashboardState.error(
              message: _mapFailureToMessage(failure),
              selectedRange: state.selectedRange,
            ),
          );
        },
        (newBiometricData) async {
          emit(
            DashboardState.loaded(
              biometricData: newBiometricData,
              journalEntries: state.journalEntries,
              selectedRange: state.selectedRange,
              showLargeDataset: !state.showLargeDataset,
            ),
          );
        },
      );
    } on Exception catch (e) {
      emit(
        DashboardState.error(
          message: 'Unexpected error: $e',
          selectedRange: state.selectedRange,
        ),
      );
    }
  }
}
