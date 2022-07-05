import 'package:algoriza_task1/model/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class BuildOnBoarding extends StatelessWidget {
  const BuildOnBoarding({Key? key, this.model}) : super(key: key);

 final BoardingModel? model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Image(
          image: AssetImage('${model?.image}',),
          height: 340.0,
          width: double.infinity,
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          '${model?.title}',
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
          '${model?.body}',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.teal[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
