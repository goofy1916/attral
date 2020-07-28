import 'package:attraltipperamc/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class AdsSlidePage extends StatelessWidget {

  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: PageView.builder(
            controller: PageController(initialPage: 0, viewportFraction: 0.6),
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: Text(
                      "Ads Slide Page",
                      style: smallBlackText,
                    ),
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
        ),
        _buildCircleIndicator(),
      ],
    );
  }
  _buildCircleIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CirclePageIndicator(
        selectedDotColor: Colors.black,
        dotColor: Colors.grey,
        itemCount: 5,
        currentPageNotifier: _currentPageNotifier,
      ),
    );
  }
}
