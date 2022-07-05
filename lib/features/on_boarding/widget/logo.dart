import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RichText(
      text: const TextSpan(
        children:
        [
          TextSpan(text: '7',
            style: TextStyle(
              color: Color(0xFFebc792),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'Krave',
            style: TextStyle(
              color: Color(0xFF1ea397),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,

            ),
          ),
        ],
      ),
    );
  }
}
