import 'package:flutter/material.dart';
import '../models/add_friend_model.dart';
import '../widgets/add_friend_item.dart';
import '../widgets/custom_appbar.dart';

class AddFreinds extends StatelessWidget {
  //Value of Search Text Field will be Entered there
  final _searchController = TextEditingController();
  //Object List of AddFriendItems
  List<AddFriend> addFriendsList = [
    AddFriend(name: "Fahad", userName: "fahad123"),
    AddFriend(name: "Farhan", userName: "farhan345")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  CustomAppBar(),
                  Card(
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        labelText: "Friend nickname or email",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            AddFriendItem(addFriendsList[0]),
            AddFriendItem(addFriendsList[1]),
          ],
        ),
      ),
    );
  }
}
