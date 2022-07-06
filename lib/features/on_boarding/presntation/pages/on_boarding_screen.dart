import 'package:algoriza_task1/features/login/presentation/pages/login_screen.dart';
import 'package:algoriza_task1/features/on_boarding/presntation/widget/logo.dart';
import 'package:algoriza_task1/features/on_boarding/presntation/widget/on_boarding_widget.dart';
import 'package:algoriza_task1/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../model/onboarding/onboarding.dart';
import '../widget/skip_button.dart';


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



