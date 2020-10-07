import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:extendable/extendable.dart';

void main() {
  final file = File('test_resources/people.json');

  test("should return file name with extension", () {
    assert(file.nameWithExtension == "people.json");
  });
  test("should return file name without extension", () {
    assert(file.name == "people");
  });
  test("should return file extension", () {
    assert(file.fileExtension == "json");
  });
}
