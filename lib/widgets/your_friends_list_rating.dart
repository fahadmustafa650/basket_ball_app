import 'package:flutter/material.dart';
import 'display_rating_star_value.dart';
import 'friend_name_image.dart';

class CustomFriendsRatingList extends StatelessWidget {
  final ctx;
  CustomFriendsRatingList(this.ctx);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            FriendNameImage(ctx),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 3,
              endIndent: 8,
              thickness: 2,
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
            ),
            Divider(
              indent: 3,
              endIndent: 8,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
