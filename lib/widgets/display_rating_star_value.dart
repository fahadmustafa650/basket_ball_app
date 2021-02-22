import 'package:flutter/material.dart';

class RatingStarValue extends StatelessWidget {
  final String title;
  final String ratingStars;

  RatingStarValue({@required this.title, @required this.ratingStars});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
        title.toLowerCase() != "feedback"
            ? Row(
                children: [
                  Text(
                    ratingStars,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  )
                ],
              )
            : Text(
                ratingStars,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ],
    );
  }
}
