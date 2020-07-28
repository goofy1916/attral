import 'package:attraltipperamc/Screens/loginpage/mpinsection.dart';
import 'package:attraltipperamc/constants.dart';
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
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header(name: "Sundar Pichai"),
                mPINSection(),
              ],
            ),
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
            style: smallBlackText.copyWith(color: Colors.grey[500]),
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
