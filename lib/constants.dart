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
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
);



//Container box decoration

final decoration = BoxDecoration(boxShadow: [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
    ),
  ],
  borderRadius: BorderRadius.circular(10),
  color: Colors.white
);




// Search Box decor

InputDecoration searchDecoration = InputDecoration(
  hintText: "Search",
  hintStyle: mediumText.copyWith(color: Colors.white),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
);