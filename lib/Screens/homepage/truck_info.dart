import 'package:attraltipperamc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TruckInfo extends StatefulWidget {
  @override
  _TruckInfoState createState() => _TruckInfoState();
}

class _TruckInfoState extends State<TruckInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10, horizontal: 18),
      decoration: decoration,
      width: MediaQuery.of(context).size.width - 10,
      child: Column(
        children: <Widget>[
          heading(),
          SizedBox(
            height: 5,
          ),
          truckList(context),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width-30,
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.grey[800],
              onPressed: () {},
              child: Text("Add Truck", style: mediumText.copyWith(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }

  truckList(context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3 - 45,
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey[300], width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 55,
                    child: Text(
                      "Truck ${index+1}",
                      style: smallBlackText,
                    )),
                Container(
                    width: 50,
                    child: Text(
                      "BS4",
                      style: smallBlackText,
                    )),
                Container(
                    width: 50,
                    child: Text(
                      "View",
                      style: smallBlackText,
                    )),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }

  heading() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 50,
                  child: Text(
                    "Truck",
                    style: mediumText,
                  )),
              Container(
                  width: 50,
                  child: Text(
                    "Plan",
                    style: mediumText,
                  )),
              Container(
                  width: 50,
                  child: Text(
                    "View",
                    style: mediumText,
                  )),
            ],
          ),
          SizedBox(height: 5),
          Container(
            height: 1,
            color: CupertinoColors.darkBackgroundGray,
          ),
        ],
      ),
    );
  }
}
