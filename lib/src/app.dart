import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'home_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepPurpleAccent,
        fontFamily: "Circular-Std",
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepPurpleAccent,
        fontFamily: "Circular-Std",
      ),
      home: ChangeNotifierProvider<ItemSelector>(
        create: (_) => ItemSelector(0),
        child: HomeWidget(),
      ),
    );
  }
}
