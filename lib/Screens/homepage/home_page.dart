import 'package:attraltipperamc/Screens/homepage/truck_info.dart';
import 'package:attraltipperamc/Screens/homepage/user_info.dart';
import 'package:attraltipperamc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              header(context),
              SizedBox(
                height: 12,
              ),
              UserInfo(),
              SizedBox(
                height: 12,
              ),
              searchBox(context),
              SizedBox(
                height: 12,
              ),
              TruckInfo(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('Plan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trip_origin),
              title: Text('Trip Sheet'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey[800],
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey[300],
        ),
      ),
    );
  }

  searchBox(context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: decoration.copyWith(
          color: Colors.grey[500], borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
            size: 26,
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 200,
                  child: TextField(
                    style: mediumText.copyWith(color: Colors.white),
                    decoration: searchDecoration,
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: decoration.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  header(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16.0),
      decoration: decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
