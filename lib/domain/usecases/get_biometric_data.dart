import 'package:unfold_ai_app/core/errors/failure.dart';
import 'package:unfold_ai_app/core/usecases/usecase.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/domain/repositories/biometric_repository.dart';

/// Use case for retrieving biometric data.
///
/// This use case encapsulates the business logic for fetching biometric data
/// from the repository layer.
class GetBiometricData
    implements UseCase<List<BiometricData>, GetBiometricDataParams> {
  /// Creates a new [GetBiometricData] use case.
  ///
  /// [repository] - The repository to use for data retrieval
  GetBiometricData({required this.repository});

  /// The repository used for retrieving biometric data.
  final BiometricRepository repository;

  @override
  Future<Either<Failure, List<BiometricData>>> call(
    GetBiometricDataParams params,
  ) async {
    return repository.getBiometricData(
      range: params.range,
      useLargeDataset: params.useLargeDataset,
    );
  }
}

/// Use case for retrieving journal entries.
///
/// This use case encapsulates the business logic for fetching journal entries
/// from the repository layer.
class GetJournalEntries
    implements UseCase<List<JournalEntry>, GetJournalEntriesParams> {
  /// Creates a new [GetJournalEntries] use case.
  ///
  /// [repository] - The repository to use for data retrieval
  GetJournalEntries({required this.repository});

  /// The repository used for retrieving journal entries.
  final JournalRepository repository;

  @override
  Future<Either<Failure, List<JournalEntry>>> call(
    GetJournalEntriesParams params,
  ) async {
    return repository.getJournalEntries(range: params.range);
  }
}
