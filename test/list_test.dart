import 'package:flutter_test/flutter_test.dart';
import 'package:extendable/extendable.dart';

void main() {
  group("ListUtil", (){
    test('return null if a list is empty', (){
      final list = [];

      assert(list.firstOrNull == null);
    });

    test('return null if a list is null', (){
      List list;

      assert(list.firstOrNull == null);
    });

    test('return first item if a list is not null', (){
      final list = ['Test'];

      assert(list.firstOrNull == 'Test');
    });

    test('return first item if a list is not null', (){
      final list = ['Test', 'Tset'];

      assert(list.lastOrNull == 'Tset');
    });
  });
}