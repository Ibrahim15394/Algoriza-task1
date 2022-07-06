import 'package:flutter/material.dart';

class BoarderGoogleWidget extends StatelessWidget {
  const BoarderGoogleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFb9c9d5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20.0,
            child: const Image(
              image: AssetImage('assets/images/google.png'),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            'Sign with by google',
            style: TextStyle(
              color: Colors.blue[300],
            ),
          ),
        ],
      ),
    );
  }
}
// دي طريقة تانية
// SizedBox(
// width: double.infinity,
// child: OutlinedButton.icon(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.google,
// color: Colors.teal,
// size: 16.0,
// ),
// label: const Text(
// 'Sign in with google',
// style: TextStyle(
// color: Colors.teal,
// ),
// ),
// ),
// ),