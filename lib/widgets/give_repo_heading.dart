import 'package:flutter/material.dart';

class CustomTopHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Edmonds Playground",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Address dgdfg dg dgd fgdfgdfg ddress dgdfg ",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
