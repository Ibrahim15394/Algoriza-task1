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

class DefaultFormField extends StatelessWidget {
  final TextInputType type;
  final String validate;
  final String? textLabel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final IconData? suffix;
  final String? hintText;
  final double? radius;

   DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    required this.validate,
     this.textLabel,
     this.prefixIcon,
    this.suffix,
    this.hintText,
    this.radius,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validate;
        }
        return null;
      },
      keyboardType: type,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
    );
  }
}

void navigateTo(context, widget) =>  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) =>  widget,
  ),
);

void navigateAndFinish(context, widget) =>
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => widget),
            (route) => false);