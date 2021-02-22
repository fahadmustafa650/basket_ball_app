import 'package:flutter/material.dart';
import 'display_rating_star_value.dart';

class CustomUserRepo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'YOUR REP',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
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
                            Icons.sports_basketball,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "My Games",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 10,
              indent: 3,
              endIndent: 20,
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
              height: 10,
              indent: 3,
              endIndent: 20,
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [myTrendsButton(), addFriendsButton()],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget addFriendsButton() {
    return GestureDetector(
      onTap: () {},
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
              Icons.person_add,
              size: 18,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              "Add friends",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget myTrendsButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.deepOrange,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports_basketball,
              size: 18,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              "My Trends",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
