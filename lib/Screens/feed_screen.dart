import 'package:basket_ball/widgets/poster_info.dart';
import 'package:basket_ball/widgets/text_post.dart';
import 'package:basket_ball/widgets/user_clickable_buttons.dart';
import 'package:basket_ball/widgets/viewer_action_report.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          UserPost(isImage: true),
          UserPost(isImage: false)
        ],
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  final bool isImage;
  UserPost({this.isImage});

  Widget userPostType() {
    if (isImage)
      return Container(
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/basket_ball123.png'),
              ),
            ),
            ViewerActionsReport(
              isImage: true,
            ),
          ],
        ),
      );
    else
      return Column(
        children: [
          TextPost(
            message:
                "hi there! there is a basket ball competition game in nearby park",
          ),
          ViewerActionsReport(
            isImage: false,
          ),
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PosterInfo(),
              userPostType(),
              SizedBox(height: 10),
              UserClickAbleButtons(),
            ],
          )),
    );
  }
}
