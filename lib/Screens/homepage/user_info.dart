import 'package:attraltipperamc/constants.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {

  num bs3 = 9,bs4 = 20, bs6 = 14;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      width: MediaQuery.of(context).size.width-10,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Sundar Pichai",
                    style: mediumText,),
                  SizedBox(height: 10,),
                  Text("Palo Alto,\nCalifornia - 101",
                    style: smallWhiteText.copyWith(color: Colors.grey[500]),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Plans",
                        style: mediumText,),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[500]
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:5.0),
                              child: Text("BS3-$bs3",
                              style: smallWhiteText,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:5.0),
                              child: Text("BS4-$bs4",
                              style: smallWhiteText,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:5.0),
                              child: Text("BS6-$bs6",
                              style: smallWhiteText,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Membership",
                    style: mediumText,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.blue,),
                      Text("Diamond",
                        style: smallWhiteText.copyWith(color: Colors.grey[400]),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
