import 'dart:html';

import 'package:list/list.dart' as list;

void main() {
  List dynamicList = [1, 'belajar', true];
  print(dynamicList.runtimeType);
  print(dynamicList[2]);

  List<String> stringlist = ["Hello", "belajar dart", "Dart"];
  stringlist.add('Flutter');
  stringlist.insert(2, 'insert');
  stringlist[1] = 'mengubah list';
  // stringlist.remove('Hello');
  //
  // //menghapus index ke-3
  // stringlist.removeAt(3);
  //
  // //menghapus list terakhir
  // stringlist.removeLast();

  // menghapus list dengan range
  stringlist.removeRange(0, 4);

  for (int i = 0; i < stringlist.length; i++){
    print(stringlist[i]);
  }

  var favorites = ['seafood', 'salad', 'nugget', 'soup'];
  var other = ['cake','pie', 'donut'];

  // var allfavorite = [favorites, other];
  var allfavorite = [...favorites,...other];

  print(allfavorite);

  //list bernilai null
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);
}
