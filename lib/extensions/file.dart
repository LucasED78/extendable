import 'dart:io';

/// A set  of utilities to use on [FileSystemEntity]
extension FileExtension on FileSystemEntity {
  /// Return the file name with extension.
  ///
  /// Example: if the File path is "/assets/logo.jpg" it will return "logo.jpg"
  String get nameWithExtension => this?.path?.split("/")?.last;

  /// Return the file name
  ///
  /// Example: if the File path is "/assets/logo.jpg" it will return "jpg"
  String get fileExtension => nameWithExtension.split(".")?.last;

  /// Return the file extension
  ///
  /// Example: if the File path is "/assets/logo.jpg" it will return "logo"
  String get name => nameWithExtension.replaceAll(".$fileExtension", "");
}
