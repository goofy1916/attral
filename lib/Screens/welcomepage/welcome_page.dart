import 'package:attraltipperamc/Screens/welcomepage/button_builder.dart';
import 'package:attraltipperamc/constants.dart';
import 'file:///C:/Users/piyus/AndroidStudioProjects/attral_tipper_amc/lib/Screens/welcomepage/ads_slide_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            header(),
            SizedBox(
              height: 20,
            ),
            AdsSlidePage(),
            SizedBox(height: 20,),
            ButtonBuilder(),
          ],
        ),
      ),
    );
  }



  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, bottom: 12, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome to",
            style: smallBlackText.copyWith(color: Colors.grey[500]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "TIPPER CARE",
            style: largeText.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            "AMC",
            style: mediumText.copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
