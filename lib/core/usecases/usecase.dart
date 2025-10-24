import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unfold_ai_app/core/errors/failure.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

part 'usecase.freezed.dart';

/// Parameters for getting biometric data.
@freezed
class GetBiometricDataParams with _$GetBiometricDataParams {
  /// Creates parameters for getting biometric data.
  const factory GetBiometricDataParams({
    required ChartRange range,
    required bool useLargeDataset,
  }) = _GetBiometricDataParams;
}

/// Parameters for getting journal entries.
@freezed
class GetJournalEntriesParams with _$GetJournalEntriesParams {
  /// Creates parameters for getting journal entries.
  const factory GetJournalEntriesParams({
    required ChartRange range,
  }) = _GetJournalEntriesParams;
}

/// A class representing no parameters for use cases that don't need any.
class NoParams {
  /// Creates a NoParams instance.
  const NoParams();
}

/// Abstract base class for use cases in the clean architecture pattern.
///
/// Use cases encapsulate business logic and define the contract for
/// executing specific operations in the application.
// ignore: one_member_abstracts
abstract class UseCase<ReturnType, Params> {
  /// Executes the use case with the given parameters.
  ///
  /// Returns an [Either] containing either a [Failure] or the expected result.
  Future<Either<Failure, ReturnType>> call(Params params);
}
