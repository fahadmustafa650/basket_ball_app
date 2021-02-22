import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.7), image: buildDecorationImage()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainLogo(),
            StartScreenHeading(),
            StartScreenStatement(),
            GetStartedStatement(),
            connectButton(context),
            Or(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                signUpBtn(context),
                loginBtn(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  DecorationImage buildDecorationImage() {
    return DecorationImage(
        fit: BoxFit.fill,
        colorFilter:
            ColorFilter.mode(Colors.blue.withOpacity(0.7), BlendMode.dstATop),
        image: AssetImage('assets/images/basket_ball123.png'));
  }

  Widget loginBtn(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0XFF4E8F8F),
        ),
        child: Center(
            child: Text(
          'log in',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget signUpBtn(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0XFF4E8F8F),
        ),
        child: Center(
            child: Text(
          'sign up',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget connectButton(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.blue[900],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'connect',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class Or extends StatelessWidget {
  const Or({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.topLeft,
        child: Text(
          'or',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}

class GetStartedStatement extends StatelessWidget {
  const GetStartedStatement({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        'get started with',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class StartScreenStatement extends StatelessWidget {
  const StartScreenStatement({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 150),
      child: Text(
        'Discover basketball courts, join great \ncommunities and make new friends',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class StartScreenHeading extends StatelessWidget {
  const StartScreenHeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        'Welcome to Ballnow',
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MainLogo extends StatelessWidget {
  const MainLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Image(
        image: AssetImage(
          'assets/images/logo_basket_ball.png',
        ),
      ),
    );
  }
}
