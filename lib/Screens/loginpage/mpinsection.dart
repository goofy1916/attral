import 'package:attraltipperamc/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mPINSection extends StatelessWidget {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Login Using mPIN",
            style: mediumText,
          ),
          SizedBox(height: 10,),
          Form(
            key: _key,
            child: pinInput(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () {  },
              child: Text(
                "Forgot mPIN?",
                style: smallBlackText,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Colors.black,
              onPressed: () {  },
              child: Text(
                "Login",
                style: mediumText.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding pinInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 40,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 40,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 40,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 40,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
              ],
            ),
    );
  }
}
