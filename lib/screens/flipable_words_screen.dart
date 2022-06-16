import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: must_be_immutable
class FlipableWordsScreen extends StatefulWidget {
  static const routeName = "/flipable-words-screen";

  CardController controller;

  Widget flipableCard(String text) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Container(
      child: Card(
        margin: EdgeInsets.only(
          bottom: 80,
          top: 40,
          right: 20,
          left: 20,
        ),
        elevation: 10,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            ListTile(
              trailing: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xffAB9CD3),
                child: IconButton(
                  onPressed: () {
                    audioPlayer.play(
                        "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
                  },
                  icon: Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xff323478),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  _FlipableWordsScreenState createState() => _FlipableWordsScreenState();
}

class _FlipableWordsScreenState extends State<FlipableWordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAB9CD3),
        centerTitle: true,
        title: Text("Сөздерді қайталау"),
      ),
      body: Center(
        child: new TinderSwapCard(
          orientation: AmassOrientation.TOP,
          totalNum: 5,
          stackNum: 3,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.height * 0.8,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: MediaQuery.of(context).size.height * 0.7,
          cardBuilder: (context, index) => FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Container(
              child: widget.flipableCard("사람"),
            ),
            back: Container(
              child: widget.flipableCard("Адам"),
            ),
          ),
          cardController: widget.controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            if (align.x < 0) {
              //Card is LEFT swiping
            } else if (align.x > 0) {
              //Card is RIGHT swiping
            }
          },
          swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
            /// Get orientation & index of swiped card!
          },
        ),
        // child: FlipCard(
        //   direction: FlipDirection.HORIZONTAL,
        //   front: Container(
        //     child: widget.flipableCard("사람"),
        //   ),
        //   back: Container(
        //     child: widget.flipableCard("Адам"),
        //   ),
        // ),
      ),
    );
  }
}
