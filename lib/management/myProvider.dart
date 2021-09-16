import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int indexList = 0;
  final List<String> category = [
    'All',
    'Chineese',
    'Indian',
    'Pakistani',
    'British',
    'Desi',
    'Italian',
    'Japanese',
    'European',
    'Spanish'
  ];
  void selectedItem(int i) {
    indexList = i;
    notifyListeners();
  }
}
