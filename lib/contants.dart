import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Text sizes constants

TextStyle smallWhiteText = TextStyle(fontSize: 16, color: Colors.white);
TextStyle smallBlackText = TextStyle(fontSize: 16, color: Colors.black);
TextStyle mediumText = TextStyle(fontSize: 20, color: Colors.black);
TextStyle largeText = TextStyle(fontSize: 28, color: Colors.black);

// InputDecoration styles constants

InputDecoration mPINDecoration = InputDecoration(
  hintText: "0",
  hintStyle: largeText.copyWith(color: Colors.grey[500]),
//  focusedBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.black),
//  ),
);
