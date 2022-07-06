import 'package:flutter/material.dart';

class MyDividerWidget extends StatelessWidget {
  const MyDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            height: 1.0,
            color: Colors.teal[100],
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        const Text(
          'Or',
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Container(
            height: 1.0,
            color: Colors.teal[100],
          ),
        ),
      ],
    );
  }
}
