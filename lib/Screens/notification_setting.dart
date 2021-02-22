import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotificationSetting extends StatefulWidget {
  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notification Setting',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          CreatedGame(),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}

class CreatedGame extends StatefulWidget {
  @override
  _CreatedGameState createState() => _CreatedGameState();
}

class _CreatedGameState extends State<CreatedGame> {
  bool switchValue;

  void gameNotificationToast(bool value) {
    switchValue = value;
    value
        ? showToast('Game Notifications turned on')
        : showToast('Game Notifications turned off');
  }

  Future<bool> showToast(String msg) async {
    await Fluttertoast.cancel();
    return await Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.4),
        textColor: Colors.white,
        fontSize: 13.0);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Created Game',
        style: TextStyle(fontSize: 18),
      ),
      trailing: Switch(
        activeColor: Colors.deepOrange,
        activeTrackColor: Colors.orange,
        value: switchValue,
        onChanged: (bool value) {
          setState(() {
            //switchValue = value;
            //  gameNotificationToast(value);
          });
        },
      ),
    );
  }
}
