import 'package:basket_ball/Screens/add_friends.dart';
import 'package:basket_ball/Screens/edit_profile.dart';
import 'package:basket_ball/Screens/give_repo.dart';
import 'package:basket_ball/Screens/list_park.dart';
import 'package:basket_ball/Screens/settings.dart';
import 'package:basket_ball/Screens/splash_screen.dart';
import 'package:basket_ball/Screens/user_profile.dart';
import 'package:basket_ball/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class ScreensList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Splash Screen'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddFreinds()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Add Friends'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Edit Profile'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Settings'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GiveRepo()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Give Repo'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.blue,
                title: Text('Parks List'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParkList()),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('User Profile'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomAlertDialog()),
                  );
                },
                tileColor: Colors.blue,
                title: Text('Alert Dialog'),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
