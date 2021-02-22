import 'package:basket_ball/widgets/outdoor_heading.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ParkList extends StatefulWidget {
  @override
  _ParkListState createState() => _ParkListState();
}

class _ParkListState extends State<ParkList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomParkDetailsWidget(),
          CustomParkDetailsWidget(),
          CustomParkDetailsWidget(),
          CustomParkDetailsWidget(),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: null,
            heroTag: '1',
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.wifi),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: null,
            heroTag: '2',
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.padding),
          )
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Text(
        "List of Park",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {})
      ],
    );
  }
}

class CustomParkDetailsWidget extends StatefulWidget {
  @override
  _CustomParkDetailsWidgetState createState() =>
      _CustomParkDetailsWidgetState();
}

class _CustomParkDetailsWidgetState extends State<CustomParkDetailsWidget> {
  double _rating = 1.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                parkAddressLocation(
                  locationText: 'Venice beach Location Beach',
                ),
                ratingStars(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            addressText(address: "address......"),
            SizedBox(
              height: 10,
            ),
            currentlyActiveMembers(activeMembersNumbers: 21),
            SizedBox(
              height: 20,
            ),
            OutdoorHeading(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [setUpGameButton(), directionsButton()],
            )
          ],
        ),
      ),
    );
  }

  Widget directionsButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
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
        width: 150,
        decoration: BoxDecoration(
            color: Color(0XFF630a68), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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

  Container addressText({String address}) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Text(address),
    );
  }

  Container currentlyActiveMembers({int activeMembersNumbers}) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            color: Colors.red,
            width: 20,
            height: 20,
          ),
          Text(
            '$activeMembersNumbers+ people currently active',
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget parkAddressLocation({String locationText}) {
    return Container(
      child: Text(
        locationText,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget ratingStars() {
    return Row(
      children: [
        Container(
          child: SmoothStarRating(
              allowHalfRating: true,
              onRated: (ratingValue) {
                setState(() {
                  _rating = ratingValue;
                });
              },
              starCount: 5,
              rating: _rating,
              size: 20.0,
              color: Colors.orange,
              borderColor: Colors.orange,
              spacing: 0.0),
        ),
        Text(
          '($_rating)',
          style: TextStyle(color: Colors.orange, fontSize: 18),
        )
      ],
    );
  }
}
