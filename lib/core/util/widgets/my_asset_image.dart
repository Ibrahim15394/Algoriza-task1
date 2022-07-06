import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {

  final String image;
  final double height;
  double width = double.infinity;

  MyAssetImage({Key? key, required this.image, required this.height,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image(
      image: AssetImage('assets/images/$image.png'),
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
