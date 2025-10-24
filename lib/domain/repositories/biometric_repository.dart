import 'package:unfold_ai_app/core/errors/failure.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// Abstract interface for biometric data repositories.
///
/// Defines the contract for retrieving biometric data in the domain layer.
// ignore: one_member_abstracts
abstract class BiometricRepository {
  /// Retrieves biometric data for the specified date range.
  ///
  /// [range] - The date range for which to retrieve data
  /// [useLargeDataset] - Whether to use a large dataset for performance testing
  ///
  /// Returns an [Either] containing either a [Failure] or a list of
  /// [BiometricData].
  Future<Either<Failure, List<BiometricData>>> getBiometricData({
    required ChartRange range,
    required bool useLargeDataset,
  });
}

/// Abstract interface for journal entry repositories.
///
/// Defines the contract for retrieving journal entries in the domain layer.
// ignore: one_member_abstracts
abstract class JournalRepository {
  /// Retrieves journal entries for the specified date range.
  ///
  /// [range] - The date range for which to retrieve journal entries
  ///
  /// Returns an [Either] containing either a [Failure] or a list of
  /// [JournalEntry].
  Future<Either<Failure, List<JournalEntry>>> getJournalEntries({
    required ChartRange range,
  });
}
