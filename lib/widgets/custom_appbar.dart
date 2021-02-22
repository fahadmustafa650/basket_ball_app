import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            //TODO:
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        const Text(
          'Add Friends',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.45),
        const Text(
          'Share',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
        )
      ],
    );
  }
}
