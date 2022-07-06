import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {

  final String image;

  const MyAssetImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image(
      image: AssetImage('assets/images/$image.png'),
      width: double.infinity,
      height: 250.0,
      fit: BoxFit.cover,
    );
  }
}
