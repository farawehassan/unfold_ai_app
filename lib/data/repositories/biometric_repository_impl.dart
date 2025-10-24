import 'package:unfold_ai_app/core/errors/failure.dart';
import 'package:unfold_ai_app/data/datasources/biometric_data_source.dart';
import 'package:unfold_ai_app/data/models/biometric_data_model.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/domain/repositories/biometric_repository.dart';

/// Implementation of [BiometricRepository] that handles data transformation
/// and error handling for biometric data operations.
class BiometricRepositoryImpl implements BiometricRepository {
  /// Creates a new [BiometricRepositoryImpl] instance.
  ///
  /// [dataSource] - The data source to use for retrieving biometric data
  BiometricRepositoryImpl({required this.dataSource});

  /// The data source used for retrieving biometric data.
  final BiometricDataSource dataSource;

  @override
  Future<Either<Failure, List<BiometricData>>> getBiometricData({
    required ChartRange range,
    required bool useLargeDataset,
  }) async {
    try {
      final models = await dataSource.getBiometricData(
        range: range,
        useLargeDataset: useLargeDataset,
      );
      final entities = models.map((model) => model.toEntity()).toList();
      return Either.right(entities);
    } on Exception catch (e) {
      return Either.left(Failure.serverFailure(message: e.toString()));
    }
  }
}

/// Implementation of [JournalRepository] that handles data transformation
/// and error handling for journal entry operations.
class JournalRepositoryImpl implements JournalRepository {
  /// Creates a new [JournalRepositoryImpl] instance.
  ///
  /// [dataSource] - The data source to use for retrieving journal entries
  JournalRepositoryImpl({required this.dataSource});

  /// The data source used for retrieving journal entries.
  final JournalDataSource dataSource;

  @override
  Future<Either<Failure, List<JournalEntry>>> getJournalEntries({
    required ChartRange range,
  }) async {
    try {
      final models = await dataSource.getJournalEntries(range: range);
      final entities = models.map((model) => model.toEntity()).toList();
      return Either.right(entities);
    } on Exception catch (e) {
      return Either.left(Failure.serverFailure(message: e.toString()));
    }
  }
}
