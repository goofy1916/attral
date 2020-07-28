import 'package:attraltipperamc/Screens/homepage/home_page.dart';
import 'package:attraltipperamc/constants.dart';
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
            style: mediumText.copyWith(color: Colors.grey[500]),
          ),
          SizedBox(height: 12,),
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
                style: smallBlackText.copyWith(color: Colors.grey[500]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: double.infinity,
              height: 40,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.grey[300],
                onPressed: () {
                  if (_key.currentState.validate()) {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text(
                  "Login",
                  style: mediumText.copyWith(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(child: Text("or Login with your fingerprint", style: smallBlackText.copyWith(color: Colors.grey[400]),)),
          SizedBox(height: 60,),
          Container(
              height: 120,
              child: Center(child: Image.asset('assets/images/fingerprint_black_192x192.png', fit: BoxFit.cover,))),
        ],
      ),
    );
  }

  Padding pinInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 50,
                    height: 60,
                    child: TextFormField(
                      validator: (value){
                        return value.isEmpty ? "Cannot be empty" : null;
                      },
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 50,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value){
                        return value.isEmpty ? "Cannot be empty" : null;
                      },
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 50,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value){
                        return value.isEmpty ? "Cannot be empty" : null;
                      },
                      cursorColor: Colors.black,
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textAlign: TextAlign.center,
                      style: largeText.copyWith(color: Colors.grey[500]),
                      decoration: mPINDecoration,)),
                Container(
                    width: 50,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value){
                        return value.isEmpty ? "Cannot be empty" : null;
                      },
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
