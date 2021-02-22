import 'package:flutter/material.dart';

class OutdoorHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.centerLeft,
      child: Text(
        'Outdoor',
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
  }
}
