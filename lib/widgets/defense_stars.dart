import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DefenseStars extends StatefulWidget {
  @override
  _DefenseStarsState createState() => _DefenseStarsState();
}

class _DefenseStarsState extends State<DefenseStars> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Defense",
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 5),
        Container(
          width: 70,
          height: 360,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            elevation: 5,
            child: Center(
              child: RatingBar.builder(
                initialRating: 1,
                itemCount: 10,
                itemSize: 31.5,
                updateOnDrag: true,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 1:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 2:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 3:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 4:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 5:
                      return Icon(
                        Icons.star_border_outlined,
                        size: 10,
                        color: Colors.orange,
                      );
                    case 6:
                      return Icon(
                        Icons.star_border_outlined,
                        size: 10,
                        color: Colors.orange,
                      );
                    case 7:
                      return Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                      );
                    case 8:
                      return Icon(
                        Icons.star_border_outlined,
                        size: 10,
                        color: Colors.orange,
                      );
                    case 9:
                      return Icon(
                        Icons.star_border_outlined,
                        size: 10,
                        color: Colors.orange,
                      );
                    case 10:
                      return Icon(
                        Icons.star_border_outlined,
                        size: 10,
                        color: Colors.orange,
                      );
                    default:
                      return null;
                  }
                },
                onRatingUpdate: (rating) {
                  rating = rating;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
