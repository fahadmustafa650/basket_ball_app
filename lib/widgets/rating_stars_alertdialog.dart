import 'package:basket_ball/widgets/passing_stars.dart';
import 'package:basket_ball/widgets/shooting_stars.dart';
import 'package:flutter/material.dart';
import 'defense_stars.dart';

class RatingStarsCatagories extends StatelessWidget {
  final BuildContext ctx;
  RatingStarsCatagories(this.ctx);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Update Rep',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ShootingStars(), PassingStars(), DefenseStars()],
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment(0.9, 0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
