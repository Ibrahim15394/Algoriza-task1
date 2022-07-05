import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 80.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color(0xFFfaf3e8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Skip',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
