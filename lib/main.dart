import 'package:algoriza_task1/features/on_boarding/presntation/pages/on_boarding_screen.dart';
import 'package:algoriza_task1/shared/themes.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        supportedLocales: const [
          Locale("en"),
        ],
         localizationsDelegates: const [
          CountryLocalizations.delegate,
        ],
        home: const OnBoardingScreen(),
      ),
    );
  }
}
