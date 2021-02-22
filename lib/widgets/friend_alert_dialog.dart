import 'package:flutter/material.dart';

class FriendAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 80,
        child: Column(
          children: [
            GestureDetector(child: Text('Unfriend')),
            Divider(
              thickness: 1,
            ),
            GestureDetector(child: Text('Trend')),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
