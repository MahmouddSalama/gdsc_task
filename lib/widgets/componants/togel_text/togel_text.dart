import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class TogelText extends StatelessWidget {
  final String qustion;
  final String operation;
  final Function function;


  const TogelText({Key? key,required this.qustion,required this.operation,required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: '$qustion   ',
            style: TextStyle(fontSize: 16, color: Colors.white)),
        TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () => function(),
          text: operation,
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
      ]),
    );
  }
}