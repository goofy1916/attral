import 'dart:ui';

import 'package:attraltipperamc/Screens/loginpage/login_page.dart';
import 'package:attraltipperamc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 160,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute( builder: (context) => LoginPage()));
              },
              color: Colors.grey[300],
              child: Text(
                "Login",
                style: smallBlackText,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            MaterialButton(
              minWidth: 160,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              onPressed: () {},
              color: Colors.grey[300],
              child: Text(
                "Register",
                style: smallBlackText,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            "Have a Query? Contact Us",
            style: smallBlackText,
          ),
        ),
      ],
    );
  }
}
