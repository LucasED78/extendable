import 'package:flutter_test/flutter_test.dart';
import 'package:extendable/extendable.dart';

void main() {
  group('StringUtil', () {
    test('return true if is a valid email', () {
      final isEmail = 'lucased78@hotmail.com'.isEmail;

      assert(isEmail);
    });

    test('return false if is a invalid email', () {
      final isEmail = 'lucased78hotmail.com'.isEmail;

      assert(!isEmail);
    });

    test('return false if is a null or empty string', () {
      final isEmail1 = ''.isEmail;
      final isEmail2 = null.isEmail;

      assert(!isEmail1 && !isEmail2);
    });

    test('limit a string based on a number', () {
      final string = 'string';
      final limit = 3;

      expect(string.limit(limit).length, 3);
    });

    test('return same length if string length is less than or equal limit', () {
      final string = 'string';
      final limit = 6;

      expect(string.limit(limit).length, 6);
    });

    test('return a bool from a string', () {
      final string = 'true';

      expect(string.toBool(), true);
    });

    test('return a bool with a value false from a null string', () {
      String string;

      expect(string.toBool(), false);
    });
  });
}
