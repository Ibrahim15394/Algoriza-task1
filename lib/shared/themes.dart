import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    titleSpacing: 0.0,
    backgroundColor: Colors.white,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
     color : Colors.black,
    ),

  ),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
);