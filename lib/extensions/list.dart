/// Set of utilities to use on [List]
extension ListUtils<T> on List<T> {
  /// Returns first [T] if non null or empty
  T get firstOrNull {
    if (this == null || isEmpty) {
      return null;
    }

    return first;
  }

  /// Returns last [T] if non null or empty
  T get lastOrNull {
    if (this == null || isEmpty) {
      return null;
    }

    return last;
  }
}