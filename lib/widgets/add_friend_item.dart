import 'package:flutter/material.dart';
import 'package:basket_ball/models/add_friend_model.dart';

class AddFriendItem extends StatelessWidget {
  final AddFriend _addFriends;
  AddFriendItem(this._addFriends);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.face_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(_addFriends.name),
        subtitle: Text(_addFriends.userName),
        trailing: RaisedButton(
          color: Colors.purple[900],
          onPressed: () {},
          child: const Text(
            'Add friend',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
