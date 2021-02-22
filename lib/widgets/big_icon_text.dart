import 'package:flutter/material.dart';

class BigIconText extends StatelessWidget {
  final IconData iconData;
  final String title;
  BigIconText({this.iconData, this.title});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        iconData,
        color: Colors.black,
        size: 20,
      ),
      SizedBox(
        width: 5,
      ),
      Text(title)
    ]);
  }
}
