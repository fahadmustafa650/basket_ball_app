import 'package:flutter/material.dart';

import 'package:basket_ball/widgets/small_icon_text.dart';

class ViewerActionsReport extends StatelessWidget {
  final bool isImage;
  const ViewerActionsReport({
    Key key,
    this.isImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: isImage
          ? likeCmntShare()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                likeCmntShare(),
                SmallIconText(
                  icon: Icons.supervisor_account_sharp,
                  numbers: '0',
                ),
              ],
            ),
    );
  }

  Container likeCmntShare() {
    return Container(
      color: Colors.white,
      height: 30,
      width: 110,
      child: Row(
        children: [
          SmallIconText(
            icon: Icons.thumb_up_sharp,
            numbers: '0',
          ),
          SizedBox(
            width: 10,
          ),
          SmallIconText(
            icon: Icons.comment,
            numbers: '0',
          ),
          SizedBox(
            width: 10,
          ),
          SmallIconText(
            icon: Icons.share,
            numbers: '0',
          ),
        ],
      ),
    );
  }
}
