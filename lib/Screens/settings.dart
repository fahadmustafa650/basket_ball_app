import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color _repButtonColor = Colors.grey[300];
  Color _noRepButtonColor = Colors.grey[300];
  Color _repButtonTextColor = Colors.white;
  Color _noRepButtonTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          editProfileBtn(),
          unfollowedListBtn(),
          repInterestBtn(),
          notificationSettingsBtn(),
          requestDataBtn(),
          privacyPolicyBtn(),
          termOfUseBtn(),
          shareAppBtn(),
          changePasswordBtn(),
          logoutBtn(),
          deleteAccountBtn(),
          appVersionBtn()
        ],
      ),
    );
  }

  void changeNoRepoButtonTheme() {
    setState(() {
      _noRepButtonColor = Colors.grey[300];
      _noRepButtonTextColor = Colors.black;
      _repButtonColor = Colors.deepOrange;
      _repButtonTextColor = Colors.white;
    });
  }

  void changeRepoButtonTheme() {
    setState(() {
      _repButtonColor = Colors.grey[300];
      _repButtonTextColor = Colors.black;
      _noRepButtonColor = Colors.deepOrange;
      _noRepButtonTextColor = Colors.white;
    });
  }

  GestureDetector appVersionBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "App Version: 2.0.1",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector deleteAccountBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Delete Account",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector logoutBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Logout",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector changePasswordBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Change Password",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector shareAppBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Share App",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector termOfUseBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        height: 50,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Term of use",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector privacyPolicyBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector requestDataBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Request Data",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector notificationSettingsBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Notification Setting",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector repInterestBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Rep Interest",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeNoRepoButtonTheme();
                        showToast("Reputation allowed");
                      },
                      child: Container(
                        width: 170,
                        height: 30,
                        color: _repButtonColor,
                        child: Center(
                            child: Text(
                          "REP",
                          style: TextStyle(color: _repButtonTextColor),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        changeRepoButtonTheme();
                        showToast("Reputation not allowed");
                      },
                      child: Container(
                        width: 150,
                        height: 30,
                        color: _noRepButtonColor,
                        child: Center(
                            child: Text("NO REP",
                                style:
                                    TextStyle(color: _noRepButtonTextColor))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> showToast(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.4),
        textColor: Colors.white,
        fontSize: 13.0);
  }

  GestureDetector unfollowedListBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Your unfollowed list",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector editProfileBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        height: 50,
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Edit Profile",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
