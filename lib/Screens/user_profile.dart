import 'package:basket_ball/widgets/custom_user_repo_widget.dart';
import 'package:basket_ball/widgets/your_friends_list_rating.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  /*  final appBar = AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Container(
      height: 50,
      child: Image(
        image: AssetImage('assets/images/appbar_logo-removebg-preview.png'),
      ),
    ),
  ); */

  @override
  Widget build(BuildContext context) {
    return
        // appBar: appBar,
        Center(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Text(
                'Person Name',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Nick Name',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Male,age',
                style: TextStyle(fontSize: 18),
              ),
              CustomUserRepo(),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'YOUR FRIENDS',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              CustomFriendsRatingList(context),
              CustomFriendsRatingList(context),
            ],
          ),
        ),
      ),
    );
  }
}
