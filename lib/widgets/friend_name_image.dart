import 'package:flutter/material.dart';

import 'friend_alert_dialog.dart';

class FriendNameImage extends StatelessWidget {
  final ctx;
  FriendNameImage(this.ctx);
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: ctx,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return FriendAlertDialog(); //drop Alert Dialog Here;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text('Friend Name'),
      trailing: IconButton(
        onPressed: () {
          _showMyDialog();
        },
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
