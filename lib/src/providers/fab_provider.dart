  import 'package:flutter/material.dart';

class FabProvider with ChangeNotifier {
  bool shouldShow;
  int currentIndex;
  GlobalKey<FormState> globalKey;

  FabProvider(this.shouldShow, this.currentIndex);

  void updateIndex(int index) {
    currentIndex = index;
    shouldShow = true;
    notifyListeners();
  }

  void setShouldShow(bool shouldShow) {
    this.shouldShow = shouldShow;
    notifyListeners();
  }
}
