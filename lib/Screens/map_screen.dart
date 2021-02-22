import 'package:basket_ball/Screens/feed_screen.dart';
import 'package:basket_ball/Screens/user_profile.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'chat_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //List<Widget> notificationSearchIcons = ;
  int i = 0;

  static List<Widget> notificationsSearchIcons = [
    IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        onPressed: null),
    IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        onPressed: null)
  ];

  List<List<Widget>> appBarsButtons = [
    notificationsSearchIcons,
    notificationsSearchIcons,
    null,
    [
      IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          onPressed: null)
    ]
  ];

  List<Widget> screens = [
    Center(
      child: Text('Map Screen'),
    ),
    FeedScreen(),
    ChatScreen(),
    UserProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 50,
            child: Image(
              image:
                  AssetImage('assets/images/appbar_logo-removebg-preview.png'),
            ),
          ),
          actions: appBarsButtons[i],
        ),
        body: screens[i],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.red),
          unselectedFontSize: 14,
          selectedFontSize: 14,
          currentIndex: i,
          onTap: (index) {
            setState(() {
              i = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: bottomNavigationBC,
              icon: Icon(Icons.map),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              backgroundColor: bottomNavigationBC,
              icon: Icon(Icons.featured_play_list),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              backgroundColor: bottomNavigationBC,
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: bottomNavigationBC,
              label: 'Me',
            )
          ],
        ),
      ),
    );
  }
}
