import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function function;

  const CategoryListTile({
    Key? key,
   required this.text,
   required this.iconData,
   required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>function(),
      title: Text(
        text,
        style: TextStyle(
          color: Color(0xffB7C39C),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        iconData,
        color: Color(0xffB7C39C),
        size: 25,
      ),
    );
  }
}
