import 'package:flutter/material.dart';

class FabProvider with ChangeNotifier {
  bool shouldShow;
  ScrollController scrollController;

  FabProvider(this.shouldShow);

  void setShouldShow(bool shouldShow) {
    this.shouldShow = shouldShow;
    notifyListeners();
  }

  void setScrollController(ScrollController controller) {
    scrollController = controller;
    notifyListeners();
  }
}
