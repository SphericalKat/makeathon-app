import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:makeathon/src/providers/form_provider.dart';
import 'package:provider/provider.dart';

import 'home_widget.dart';
import 'providers/bottomnav_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
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
        home: HomeWidget(),
      ),
      providers: [
        ChangeNotifierProvider<BottomNavProvider>(
          create: (_) => BottomNavProvider(0),
        ),
        ChangeNotifierProvider<FabProvider>(
          create: (_) => FabProvider(true, 0),
        ),
        ChangeNotifierProvider<FormProvider>(
          create: (_) => FormProvider("", "", ""),
        )
      ],
    );
  }
}
