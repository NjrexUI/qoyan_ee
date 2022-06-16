import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TyndalymDetailsScreen extends StatelessWidget {
  static const routeName = "/tyndalym-details";

  final String text1 =
      "- 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요. - 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요. - 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요 - 안녕하세요?     제이슨이에요.  - 안녕하세요?     제이슨이에요. .";
  Widget textContainer(String text) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffEDEAFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        title: Text("안녕하세요? "),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text("Транскрипция"),
            SizedBox(height: 20),
            textContainer(text1),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffEDEAFF),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      audioPlayer.play(
                          "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      audioPlayer.pause();
                    },
                    icon: Icon(
                      Icons.pause,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      audioPlayer.stop();
                    },
                    icon: Icon(
                      Icons.stop,
                    ),
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
