import 'package:basket_ball/widgets/person_image_time.dart';
import 'package:flutter/material.dart';

//WARNING SCREEN WHEN THERE IS NO CHAT

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          PersonImageChatTime(),
          Divider(
            thickness: 2,
          ),
          PersonImageChatTime(),
          Divider(
            thickness: 2,
          ),
          PersonImageChatTime(),
          Divider(
            thickness: 2,
          ),
          PersonImageChatTime()
        ],
      ),
    );
    /* floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ), */
  }
}
