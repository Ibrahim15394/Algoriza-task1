import 'package:algoriza_task1/core/util/widgets/my_button.dart';
import 'package:algoriza_task1/core/util/widgets/navigate.dart';
import 'package:algoriza_task1/features/login/presentation/pages/login_screen.dart';
import 'package:algoriza_task1/features/on_boarding/presntation/widget/logo.dart';
import 'package:algoriza_task1/features/on_boarding/presntation/widget/skip_button.dart';
import 'package:algoriza_task1/model/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  var boardController = PageController();
  bool isLast = false;
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/on boarding1.png',
      title: 'Get food delivery to your doorstep asap',
      body:
          'We have young and professional delivery team that will bring you food as soon as possible to your doorstep',
    ),
    BoardingModel(
      image: 'assets/images/on boarding3.png',
      title: 'Buy any Food from your favorite restaurant',
      body:
          'We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected',
    ),
    BoardingModel(
      image: 'assets/images/on boarding2.png',
      title: 'Get food delivery to your doorstep asap',
      body:
          'We have young and professional delivery team that will bring you food as soon as possible to your doorstep',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SkipButton(),
            const SizedBox(
              height: 20.0,
            ),
            const Logo(),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    print(isLast);
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SmoothPageIndicator(
                controller: boardController,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xFFebc792),
                  dotColor: Color(0xFFCFD8DC),
                  dotHeight: 5.0,
                  dotWidth: 5.0,
                  spacing: 5.0,
                  expansionFactor: 4,
                ),
                count: boarding.length),
            const SizedBox(
              height: 15.0,
            ),
            MyButton(
              onClick: () {
                navigateAndFinish(context, const LoginScreen());
              },
              background: const Color(0xFF1ea397),
              height: 50.0,
              radius: 15.0,
              text: 'Get Started',
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateAndFinish(context, const LoginScreen());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.teal[300],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        children: [
          Image(
            image: AssetImage(
              '${model.image}',
            ),
            height: 300.0,
            width: double.infinity,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            '${model.title}',
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            '${model.body}',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.teal[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
