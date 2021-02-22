import 'package:flutter/material.dart';

class TextPost extends StatelessWidget {
  final String message;
  TextPost({this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Text(
        message,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }
}
