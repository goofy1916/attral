import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final cardTyper;

  const CustomCard({Key key, this.child, this.cardTyper = cardType.full}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardTyper == cardType.full ? MediaQuery.of(context).size.width-10: MediaQuery.of(context).size.width/2-10,
      padding: cardTyper == cardType.full ? EdgeInsets.all(16):EdgeInsets.all(8),
      decoration: decoration,
      child: child,
    );
  }
}
