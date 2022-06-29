import 'package:algoriza_task1/modules/on_boarding/on_boarding_screen.dart';
import 'package:algoriza_task1/shared/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightTheme ,
      home:  OnBoardingScreen() ,
    );
  }
}





