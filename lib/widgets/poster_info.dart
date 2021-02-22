import 'package:flutter/material.dart';

class PosterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 25.0,
          child: Image(
            image: AssetImage('assets/images/basketball.png'),
          )),
      title: Text('Name'),
      trailing: Text(
        '4 mins ago',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
