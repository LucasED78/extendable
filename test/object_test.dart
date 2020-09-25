import 'package:flutter_test/flutter_test.dart';
import 'package:extendable/extendable.dart';

void main() {
  group("ObjectUtil", () {
    test('return true if a value is null', () {
      String string;

      assert(string.isNull);
    });

    test('return true if a value is not null', () {
      final list = [];

      assert(list.isNotNull);
    });

    test('return true if a list is empty or null', () {
      final list = [];

      assert(list.isEmptyOrNull);
    });

    test('return false if a list is not empty or null', () {
      final list = [''];

      assert(!list.isEmptyOrNull);
    });
  });
}
