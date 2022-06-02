import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  // ignore: unused_field
  int count = 0;

  void increment() {
    count++;
    print('Incremented the counter by $count');
    notifyListeners();
  }
}
