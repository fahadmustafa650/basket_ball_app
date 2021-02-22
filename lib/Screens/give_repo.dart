import 'package:basket_ball/widgets/custom_repo_widget.dart';
import 'package:basket_ball/widgets/give_repo_heading.dart';
import 'package:basket_ball/widgets/rating_stars_alertdialog.dart';
import 'package:flutter/material.dart';

class GiveRepo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                child: CustomTopHeading(),
                preferredSize: Size.fromHeight(80.0)),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Give Rep",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomGiveRepoWidget(),
                CustomGiveRepoWidget(),
                CustomGiveRepoWidget(),
              ],
            ),
          )),
    );
  }
}
