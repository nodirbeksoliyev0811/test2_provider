import 'package:flutter/material.dart';

import '../ui/home/sub_screen/screen_1.dart';
import '../ui/home/sub_screen/screen_2.dart';
import '../ui/home/sub_screen/screen_3.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  List<Widget> screens =[
    const ScreenOne(),
    const ScreenTwo(),
    const ScreenThree(),
  ];

  int activeIndex = 0;

  void getIndex(int index){
    activeIndex = index;
    notifyListeners();
  }

  get getCount => _count;

  void countAdd() {
    _count++;
    notifyListeners();
  }

  void countSub() {
    _count--;
    notifyListeners();
  }
}
