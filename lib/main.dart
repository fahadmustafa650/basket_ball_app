import 'package:basket_ball/Screens/change_password.dart';
import 'package:basket_ball/Screens/friend_list.dart';
import 'package:basket_ball/Screens/login_screen.dart';
import 'package:basket_ball/Screens/reset_password.dart';
import 'package:basket_ball/Screens/settings.dart';
import 'package:basket_ball/Screens/sign_up.dart';
import 'package:basket_ball/Screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/feed_screen.dart';
import 'Screens/map_screen.dart';
import 'Screens/new_post.dart';
import 'Screens/notifications.dart';
import 'Screens/notification_setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
