import 'package:algoriza_task1/features/on_boarding/presntation/widget/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingWidget(),
    );
  }
}



