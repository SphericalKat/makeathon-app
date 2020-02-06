import 'package:flutter/material.dart';

class FabProvider with ChangeNotifier {
  bool shouldShow;

  FabProvider(this.shouldShow);

  void setShouldShow(bool shouldShow) {
    this.shouldShow = shouldShow;
    notifyListeners();
  }
}
