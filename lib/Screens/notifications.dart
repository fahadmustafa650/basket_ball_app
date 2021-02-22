import 'package:basket_ball/models/friend_request_model.dart';
import 'package:basket_ball/widgets/friend_request.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          FriendRequest(
            friendRequestData: FriendRequestData(friendName: 'Fahad'),
          ),
          FriendRequest(
            friendRequestData: FriendRequestData(friendName: 'Adil'),
          ),
          FriendRequest(
            friendRequestData: FriendRequestData(friendName: 'Salman'),
          ),
        ],
      ),
    );
  }
}
