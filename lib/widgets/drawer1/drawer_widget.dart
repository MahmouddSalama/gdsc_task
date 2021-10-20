
import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';
import 'package:gdsc_task/widgets/drawer1/widget/category.dart';
import 'package:gdsc_task/widgets/drawer1/widget/drawer_header.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:  Color(0xff7B8A51),
        child: ListView(
          children: [
            MyDrawerHeader(),
            CategoryListTile(
              text: 'Adoption',
              function: () {
              },
              iconData: Icons.person_add_alt_1,
            ),
            CategoryListTile(
              text: 'Donation',
              function: (){

              },
              iconData: Icons.child_care_rounded,
            ),
            CategoryListTile(
              text: 'Add pet',
              function: () {
              },
              iconData: Icons.add,
            ),
            CategoryListTile(
              text: 'Favorate',
              function: (){},
              iconData: Icons.favorite,
            ),
            CategoryListTile(
              text: 'Messages',
              function: (){

              },
              iconData: Icons.email,
            ),
            CategoryListTile(
              text: 'profile',
              function: () {
              },
              iconData: Icons.person,
            ),
            CategoryListTile(
              text: 'Setting',
              function: (){},
              iconData: Icons.settings,
            ),
            Divider(height: 3, color: KmainColor),
            CategoryListTile(
              text: 'Logout',
              function: () {
              },
              iconData: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
