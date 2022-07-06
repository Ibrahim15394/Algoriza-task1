import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextInputType type;
  final String validate;
  final String? textLabel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  double radius = 0.0;
  bool isPassword = false;

   DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    required this.validate,
    this.textLabel,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    required this.radius,
     required this.isPassword,
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
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}