import 'dart:io';

import 'model.dart';

void main(List<String> args) {
  List list = [1, 2, 3, 4, 6, 7];
  int m1 = int.parse(stdin.readLineSync().toString());
  print(m1);
  Model m = Model(name: 'amad', email: 'amad');
  String? n = null;
  n == null ? print('null') : print(3);
  n ?? '';
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var element in list) {
    print(element);
  }

  m.name1('abc', 20);
  list.forEach((_) => print(_));
}
