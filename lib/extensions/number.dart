/// Set of utilities to use on [num]
extension IntUtils on num {
  /// Returns [true] if the [this] is positive
  bool get isPositive => this >= 0;

  /// Returns [true] if the [this] is negative
  bool get isNegative => this < 0;

  /// Returns [true] if the [this] is greater than [number]
  bool isGreaterThan(int number) => this > number;

  /// Returns [true] if the [this] is less than [number]
  bool isLessThan(int number) => this < number;

  /// Returns [true] if the [this] greater than or equal [number]
  bool isGreaterThanOrEqual(int number) {
    return this >= number;
  }

  /// Returns [true] if the [this] is less than or equal [number]
  bool isLessThanOrEqual(int number) {
    return this <= number;
  }
}
