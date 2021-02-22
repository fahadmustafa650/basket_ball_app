import 'package:basket_ball/widgets/big_icon_text.dart';
import 'package:flutter/material.dart';

class UserClickAbleButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: BigIconText(
              iconData: Icons.thumb_up,
              title: 'Like',
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: BigIconText(
              iconData: Icons.comment,
              title: 'Comment',
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: BigIconText(
              iconData: Icons.share,
              title: 'Share',
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
