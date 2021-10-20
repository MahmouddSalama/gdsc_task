import 'package:flutter/material.dart';

class GoTo extends StatelessWidget {
  final Function function;
  final String text;

  const GoTo({
    Key? key,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () =>function(),
          child: Container(
            width: 70,
            height: 40,
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_forward,
              size: 35,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.pinkAccent])),
          ),
        ),
      ],
    );
  }
}
