import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';
import 'package:gdsc_task/consts/widget/const_widget.dart';


class MyDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xff7B8A51)
        ),
        child: Column(
          children: [
           buildUserImage(),
            SizedBox(height: 10),
            Flexible(
              child: Text(
                'Animals',
                style: TextStyle(
                    color: Kwhight,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
