import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  GlobalKey<FormState> globalKey;
  String name;
  String subject;
  String body;

  FormProvider(this.name, this.subject, this.body);

  void setName(String name) {
    this.name = name;
    notifyListeners();
  }

  void setSubject(String subject) {
    this.subject = subject;
    notifyListeners();
  }

  void setBody(String body) {
    this.body = body;
    notifyListeners();
  }
}
