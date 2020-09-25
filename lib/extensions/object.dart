/// A set  of utilities to use on [Object]
extension ObjectUtils on Object {
  /// Returns [true] if the [this] is null
  bool get isNull {
    return this == null;
  }

  /// Returns [true] if the [this] is not null
  bool get isNotNull {
    return !isNull;
  }

  /// Returns [true] if the [this] is empty or null
  /// 
  /// If [this] is not a [String], [List] or [Map] the 
  /// value returned will the result of [isNull]
  bool get isEmptyOrNull {
    if (this is List) {
      return isNull || (this as List).isEmpty;
    } else if (this is String){
      return isNull || (this as String).isEmpty;
    } else if (this is Map) {
      return isNull || (this as Map).isEmpty;
    }

    return isNull;
  }
}