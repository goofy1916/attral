import 'package:attraltipperamc/Screens/loginpage/mpinsection.dart';
import 'package:attraltipperamc/contants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              header(name: "Sundar Pichai"),
              mPINSection(),
//              fingerprintSection(),
            ],
          )),
    );
  }




  Padding header({String name}) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, bottom: 12, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome back,",
            style: smallBlackText,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "$name",
            style: largeText.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
