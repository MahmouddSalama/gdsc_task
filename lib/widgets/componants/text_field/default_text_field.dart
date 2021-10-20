import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final bool isPass;
  final IconData prefuxIcon;
  final String hintText;
  final Widget? suffux;

  const DefaultTextField({
    Key? key,
     this.isPass=false,
    required this.prefuxIcon,
    required this.hintText,
    this.suffux,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: size.width,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: TextFormField(
              obscureText: isPass,
              style: TextStyle(fontSize: 20,color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  prefuxIcon,
                  color: Colors.black,
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: suffux
              ),
            ),
          ),
        ),
      ),
    );
  }
}
