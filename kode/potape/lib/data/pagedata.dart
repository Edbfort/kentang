import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageData extends ChangeNotifier {
  int _bottom_nav_selec_index = 0;

  int get bottom_nav_selec_index => _bottom_nav_selec_index;

  set bottom_nav_selec_index(val) {
    _bottom_nav_selec_index = val;
    notifyListeners();
  }

  void on_bottom_nav_tap(index) {
    _bottom_nav_selec_index = index;
    notifyListeners();
  }
}
