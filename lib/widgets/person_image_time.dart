import 'package:flutter/material.dart';

class PersonImageChatTime extends StatelessWidget {
  const PersonImageChatTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 40,
        ),
      ),
      title: Text('Name'),
      subtitle: Text('how are you?'),
      trailing: Text(
        '4 minutes ago',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}

class NoRecentChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No recent chats'),
    );
  }
}
