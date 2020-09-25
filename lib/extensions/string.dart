/// A set  of utilities to use on [String]
extension StringUtil on String {
  /// Returns the first letter uppercased
  /// 
  /// If [String] is null or empty it will
  /// return [null]
  String get firstLetterCapitalized {
    if (this == null || isEmpty) {
      return null;
    }

    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  /// Return if a email is valid or not
  /// 
  /// If null or empty the value returned will be always [false]
  /// otherwise, will return a [bool] for indicate if the string
  /// received is a email or not
  bool get isEmail {
    if (this == null || isEmpty) {
      return false;
    }

    final regex = r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regexp = RegExp(regex, caseSensitive: false, multiLine: true);

    return regexp.hasMatch(this);
  }

  /// Limit a string based on [limit]
  String limit(int limit) {
    if (length <= limit) {
      return this;
    }
      
    return substring(0, limit);
  }
}