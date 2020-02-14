import 'package:flutter/material.dart';

class FabProvider with ChangeNotifier {
  bool shouldShow;
  GlobalKey<FormState> globalKey;

  FabProvider(this.shouldShow);

  void setShouldShow(bool shouldShow) {
    this.shouldShow = shouldShow;
    notifyListeners();
  }
}
