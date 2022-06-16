import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import '../widgets/sozdik_card.dart';

// ignore: must_be_immutable
class SozdikScreen extends StatelessWidget {
  static const routeName = "/sozdik-screen";

  CardController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Сөздік",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: new TinderSwapCard(
            orientation: AmassOrientation.TOP,
            totalNum: 5,
            stackNum: 3,
            maxWidth: MediaQuery.of(context).size.width * 1,
            maxHeight: MediaQuery.of(context).size.height * 1,
            minWidth: MediaQuery.of(context).size.width * 0.9,
            minHeight: MediaQuery.of(context).size.height * 0.9,
            cardBuilder: (context, index) => SozdikCard(),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
            },
          ),
        ),
      ),
    );
  }
}
