import 'package:flutter/material.dart';

class SmallIconText extends StatelessWidget {
  final IconData icon;
  final String numbers;

  const SmallIconText({
    this.icon,
    this.numbers,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
        ),
        SizedBox(
          width: 3,
        ),
        Text(numbers)
      ],
    );
  }
}
