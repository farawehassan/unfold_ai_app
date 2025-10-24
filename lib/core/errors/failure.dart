import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A generic Either type that represents a value of one of two possible types.
/// Used for handling success/failure scenarios in a functional way.
@freezed
class Either<L, R> with _$Either<L, R> {
  /// Creates a Left value containing the left type.
  const factory Either.left(L left) = _Left<L, R>;

  /// Creates a Right value containing the right type.
  const factory Either.right(R right) = _Right<L, R>;
}

/// Represents different types of failures that can occur in the application.
@freezed
class Failure with _$Failure {
  /// A failure related to cache operations.
  const factory Failure.cacheFailure({
    required String message,
  }) = _CacheFailure;

  /// A failure related to data processing or validation.
  const factory Failure.dataFailure({
    required String message,
  }) = _DataFailure;

  /// A failure related to network connectivity or communication.
  const factory Failure.networkFailure({
    required String message,
  }) = _NetworkFailure;

  /// A failure related to server-side operations.
  const factory Failure.serverFailure({
    required String message,
  }) = _ServerFailure;
}

/// Extension methods for the Either type to provide functional programming
/// utilities.
extension EitherExtension<L, R> on Either<L, R> {
  /// Applies one of two functions based on whether this Either is Left or
  /// Right.
  ///
  /// Returns the result of applying [onLeft] if this is a Left value,
  /// or [onRight] if this is a Right value.
  T fold<T>(
    T Function(L) onLeft,
    T Function(R) onRight,
  ) {
    return when(
      left: onLeft,
      right: onRight,
    );
  }
}
