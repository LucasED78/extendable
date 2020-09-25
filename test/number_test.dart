import 'package:flutter_test/flutter_test.dart';
import 'package:extendable/extendable.dart';

void main() {
  group("NumberUtil", () {
    test('return true if a value is positive', () {
      final value = 0;

      assert(value.isPositive);
    });

    test('return true if a value is negative', () {
      final value = -1;

      assert(value.isNegative);
    });

    test('return true if a double value is positive', () {
      final value = 1.5;

      assert(value.isPositive);
    });

    test('return true if a double value is negative', () {
      final value = -1.5;

      assert(value.isNegative);
    });

    test('return true if a value is greater than other', () {
      final value = 2;
      final number = 1;

      assert(value.isGreaterThan(number));
    });

    test('return true if a value is less than other', () {
      final value = 1;
      final number = 2;

      assert(value.isLessThan(number));
    });

    test('return true if a value is greater than or equal other', () {
      final value = 2;
      final number = 2;

      assert(value.isGreaterThanOrEqual(number));
    });

    test('return true if a value is less than or equal other', () {
      final value = 2;
      final number = 2;

      assert(value.isGreaterThanOrEqual(number));
    });
  });
}
