import 'package:attraltipperamc/constants.dart';
import 'package:attraltipperamc/helperWidgets/custom_card.dart';
import 'package:flutter/material.dart';

class TruckDetails extends StatelessWidget {

  String truckModel = "BharatBenz 2523C Tipper";
  String truckKit = "Hindromas FE Kit - 135-3-3645C";
  String truckPlan = "BS4";
  String dos = "20/10/2025";
  String amc = "20/10/2025";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            header(context),
            SizedBox(height: 20,),
            truckDetails(context),
            SizedBox(height: 20,),
            planAndAMC(context),
            SizedBox(height: 20,),
            oilChangeAndLastInspectionVisit(context),
          ],
        ),
      ),
    );
  }

  oilChangeAndLastInspectionVisit(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomCard(
          cardTyper: cardType.half,
          child: Column(
            children: <Widget>[
              Text("Last Oil Changed on:", style: smallBlackText),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                ),
                child: Center(child: Text("$dos", style: smallWhiteText,),),
              ),
              Text("Next Oil Changed on:", style: smallBlackText),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                ),
                child: Center(child: Text("$dos", style: smallWhiteText,),),
              ),
            ],
          ),
        ),
        CustomCard(
          cardTyper: cardType.half,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Last Inspection Visit:", style: smallBlackText),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                ),
                child: Center(child: Text("$dos", style: smallWhiteText,),),
              ),
              Text("Next Inspection Visit:", style: smallBlackText),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                ),
                child: Center(child: Text("$dos", style: smallWhiteText,),),
              ),
            ],
          ),
        ),
      ],
    );
  }

  planAndAMC(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomCard(
          cardTyper: cardType.half,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Plan : ", style: mediumText.copyWith(fontWeight: FontWeight.bold),),
                  Text("$truckPlan", style: mediumText),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("DOS : ", style: mediumText,),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                    ),
                    child: Center(child: Text("$dos", style: smallWhiteText,),),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomCard(
          cardTyper: cardType.half,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("AMC Valid Till : ", style: mediumText.copyWith(fontWeight: FontWeight.bold),),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                ),
                child: Center(child: Text("$dos", style: smallWhiteText,),),
              ),
            ],
          ),
        ),
      ],
    );
  }

  truckDetails(context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("KA 00 XY 1234",
          style: mediumText.copyWith(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("$truckModel",
          style: smallGreyText,),
          Text("$truckKit",
            style: smallGreyText,),
        ],
      ),
    );
  }

}
