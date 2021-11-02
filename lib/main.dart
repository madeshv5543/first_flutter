import 'dart:ui';
import 'package:flutter/material.dart';

import 'screens/LandingPage.dart';
import 'utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = window.physicalSize.width;
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'First App', theme: ThemeData(primaryColor: COLOR_WHITE, accentColor: COLOR_DARK_BLUE, textTheme: screenwidth < 500 ? TEXT_THEME_SMALL : TEXT_THEM_DEFAULT, fontFamily: "Montserrat"), home: LandingPage());
  }
}
