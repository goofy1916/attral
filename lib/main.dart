import 'package:attraltipperamc/Screens/homepage/home_page.dart';
import 'package:attraltipperamc/Screens/truckdetails/truck_details.dart';
import 'package:attraltipperamc/Screens/welcomepage/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}