import 'package:flutter/material.dart';

class BottomNavProvider with ChangeNotifier {
  int selectedItem;

  BottomNavProvider(this.selectedItem);

  void setSelectedItem(int index) {
    selectedItem = index;
    notifyListeners();
  }
}
