import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image(
                    image: AssetImage('assets/images/logo_basket_ball.png'),
                  ),
                ),
                SpinKitDualRing(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
