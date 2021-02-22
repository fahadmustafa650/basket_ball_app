import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend List'),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
      ),
      body: Column(
        children: [
          FriendItem(
            name: 'Fahad',
            nickName: 'Rana',
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

class FriendItem extends StatelessWidget {
  final String name;
  final String nickName;

  const FriendItem({
    this.name,
    this.nickName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(name),
      subtitle: Text(nickName),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
    );
  }
}
