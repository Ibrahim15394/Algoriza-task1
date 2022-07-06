import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? background;
  final bool? isUpperCase;
  final double? radius;
  final VoidCallback? onClick;

  const MyButton({Key? key,
    required this.text,
    this.width = double.infinity,
    this.height,
    this.background,
    this.isUpperCase,
    this.radius,
    required this.onClick,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: MaterialButton(
        onPressed: onClick,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}