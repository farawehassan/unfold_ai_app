part of 'dashboard_bloc.dart';

/// States that represent the different phases of the dashboard.
@freezed
class DashboardState with _$DashboardState {
  /// A state that represents an error condition.
  const factory DashboardState.error({
    required String message,
    required ChartRange selectedRange,
    @Default(<BiometricData>[]) List<BiometricData> biometricData,
    @Default(<JournalEntry>[]) List<JournalEntry> journalEntries,
    @Default(false) bool showLargeDataset,
  }) = _Error;

  /// A state that represents the initial state when the app starts.
  const factory DashboardState.initial({
    required ChartRange selectedRange,
    @Default(<BiometricData>[]) List<BiometricData> biometricData,
    @Default(<JournalEntry>[]) List<JournalEntry> journalEntries,
    @Default(false) bool showLargeDataset,
  }) = _Initial;

  /// A state that represents successfully loaded data.
  const factory DashboardState.loaded({
    required List<BiometricData> biometricData,
    required List<JournalEntry> journalEntries,
    required ChartRange selectedRange,
    required bool showLargeDataset,
  }) = _Loaded;

  /// A state that represents data is currently being loaded.
  const factory DashboardState.loading({
    required ChartRange selectedRange,
    @Default(<BiometricData>[]) List<BiometricData> biometricData,
    @Default(<JournalEntry>[]) List<JournalEntry> journalEntries,
    @Default(false) bool showLargeDataset,
  }) = _Loading;
}
