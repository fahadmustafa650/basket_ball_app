import 'package:basket_ball/models/friend_request_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FriendRequest extends StatelessWidget {
  final FriendRequestData friendRequestData;

  const FriendRequest({this.friendRequestData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.topRight,
                child: Text(
                  '7 hours ago',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )),
            Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  '${friendRequestData.friendName} sent friend request to you',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              thickness: 2,
              height: 10,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [acceptButton(), rejectButton()],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget acceptButton() {
    return GestureDetector(
      onTap: () {
        showToast('Friend Request accepted');
      },
      child: Container(
        height: 35,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              Text(
                'Accept',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rejectButton() {
    return GestureDetector(
      onTap: () {
        showToast('Friend Request rejected');
      },
      child: Container(
        height: 36,
        width: 160,
        decoration: BoxDecoration(
            color: Color(0XFF630a68), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              const Text(
                'Reject',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> showToast(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.4),
        textColor: Colors.white,
        fontSize: 13.0);
  }
}
