import 'package:flutter/material.dart';

class MenuItemModel with ChangeNotifier {
  int _currentIndex = 0;

  set setCurrentIndex(int index) {
    this._currentIndex = index;
    notifyListeners();
  }

  int get getCurrentIndex => this._currentIndex;
}
