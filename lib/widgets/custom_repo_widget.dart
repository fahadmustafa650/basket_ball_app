import 'package:basket_ball/Screens/give_repo.dart';
import 'package:basket_ball/widgets/rating_stars_alertdialog.dart';
import 'package:flutter/material.dart';

import 'display_rating_star_value.dart';

class CustomGiveRepoWidget extends StatelessWidget {
  Future<void> _showMyDialog(BuildContext ctx) async {
    return showDialog<void>(
      context: ctx,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: RatingStarsCatagories(ctx),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Text("Image"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "J crossover",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
                GestureDetector(
                  onTap: () {
                    _showMyDialog(context);
                  },
                  child: Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0XFF3d043a),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Give Rep",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RatingStarValue(
                    title: "Shooting",
                    ratingStars: "5",
                  ),
                  SizedBox(width: 2),
                  VerticalDivider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  RatingStarValue(
                    title: "Passing",
                    ratingStars: "5",
                  ),
                  SizedBox(width: 2),
                  VerticalDivider(
                    thickness: 0.5,
                    width: 5,
                    color: Colors.grey,
                  ),
                  RatingStarValue(
                    title: "Defense",
                    ratingStars: "5",
                  ),
                  SizedBox(width: 2),
                  VerticalDivider(
                    thickness: 0.5,
                    width: 5,
                    color: Colors.grey,
                  ),
                  RatingStarValue(
                    title: "Overall",
                    ratingStars: "5",
                  ),
                  SizedBox(width: 2),
                  VerticalDivider(
                    thickness: 0.5,
                    width: 5,
                    color: Colors.grey,
                  ),
                  RatingStarValue(
                    title: "Feedback",
                    ratingStars: "5",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
