import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  ///Alert Dialog for map
  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return SimpleCustomAlert();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('Alert Dialog')),
      ),
    );
  }
}

class SimpleCustomAlert extends StatelessWidget {
  Widget directionsButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 170,
        margin: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.directions,
                color: Colors.white,
              ),
              const Text(
                'Directions',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setUpGameButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 170,
        margin: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            color: Color(0XFF630a68), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.run_circle_rounded,
                color: Colors.white,
              ),
              Text(
                'Set up game',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      content: Container(
        height: 240,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ParkNameWidget(),
            Text(
              '280 W 155th St, New York',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(color: Colors.red, width: 20, height: 20),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    '+21 People currently \nactive',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            setUpGameButton(),
            SizedBox(
              height: 15,
            ),
            directionsButton()
          ],
        ),
      ),
    );
  }
}

class ParkNameWidget extends StatelessWidget {
  const ParkNameWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Holcombe Rucker Park',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.clear),
        )
      ],
    );
  }
}
