import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';
class DefaultButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){},
      child: Container(
        width: 300,
        height: 55,
        alignment: Alignment.center,
        child: Text('Adoption',style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w400
        ),),
        decoration: BoxDecoration(
          color: KmainColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
class DefaultButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){},
      child: Container(
        width: 55,
        height: 55,
        alignment: Alignment.center,
        child: Icon(Icons.favorite,color: Colors.white,),
        decoration: BoxDecoration(
          color: KmainColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
