import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:provider/provider.dart';

class ProblemStatement extends StatelessWidget {
  final String title;
  final List<Widget> listItems;

  ProblemStatement(this.title, this.listItems);

  @override
  Widget build(BuildContext context) {
    ScrollController _hideButtonController = ScrollController();
    final fabVisibility = Provider.of<FabProvider>(context, listen: true);
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(false);
        }
      } else {
        if (!fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(true);
        }
      }
    });

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepPurpleAccent,
        primaryColor: Color(0xff1d1f3e),
        primaryColorDark: Color(0xff1d1f3e),
        backgroundColor: Color(0xff1d1f3e),
        cardColor: Color(0xff262845),
        fontFamily: "Circular-Std",
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepPurpleAccent,
        primaryColor: Color(0xff1d1f3e),
        primaryColorDark: Color(0xff1d1f3e),
        backgroundColor: Color(0xff1d1f3e),
        cardColor: Color(0xff262845),
        fontFamily: "Circular-Std",
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff1d1f3e),
        body: ListView(
          controller: _hideButtonController,
          children: listItems,
        ),
      ),
    );
  }
}
