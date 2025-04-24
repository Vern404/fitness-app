/// Either type of [L] and [R]
sealed class Either<L, R> {
  const Either();

  factory Either.left(L l) => Left(l);

  factory Either.right(R r) => Right(r);

  /// Fold left and right types of [Either] to [T] type
  /// based on [Left] or [Right] condition
  T fold<T>(T Function(L) left, T Function(R) right) => switch (this) {
    Left(:final value) => left(value),
    Right(:final value) => right(value),
  };

  /// Check if [Either] is [Left] or [Right] type
  bool isLeft() => switch (this) {
    Left() => true,
    Right() => false,
  };

  /// Check if [Either] is [Left] or [Right] type
  bool isRight() => !isLeft();
}

/// Left types of [Either] in [L] and [R]
class Left<L, R> extends Either<L, R> {
  /// Left type constructor for [Either] in [L] and [R] types
  const Left(this._l);

  final L _l;

  /// Get left value of [Either] in [L] and [R] types
  /// when [Either] is [Left] type
  L get value => _l;
}

/// Right types of [Either] in [L] and [R]
class Right<L, R> extends Either<L, R> {
  /// Right type constructor for [Either] in [L] and [R] types
  const Right(this._r);

  final R _r;

  /// Get right value of [Either] in [L] and [R] types
  /// when [Either] is [Left] type
  R get value => _r;
}

/// Extension on [Either] type to get [Left] and [Right] types
/// ! use only after checking the type
extension EitherExt on Either<dynamic, dynamic> {
  /// Get left value of [Either]
  dynamic get asLeft => (this as Left).value;

  /// Get right value of [Either]
  dynamic get asRight => (this as Right).value;
}
