import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../widgets/circle_btn.dart';

class SozdikCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Card(
      margin: EdgeInsets.only(
        bottom: 100,
        top: 15,
        right: 15,
        left: 15,
      ),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListTile(
              title: Text(
                "책",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              subtitle: Text(
                "Кітап",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: Color(0xffAB9CD3),
                child: IconButton(
                  icon: Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    audioPlayer.play(
                        "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
                  },
                ),
              ),
            ),
            ListTile(
              title: Text("명사",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff323478),
                  )),
              subtitle: Text("Зат есім",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff323478),
                  )),
            ),
            ListTile(
              title: Text(
                "나는 책이 많다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              subtitle: Text(
                "Менде көп кітап бар.",
                style: TextStyle(
                  color: Color(0xff323478),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "책상위에 책이 있다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              subtitle: Text(
                "Үстелдің үстінде кітап бар.",
                style: TextStyle(
                  color: Color(0xff323478),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "나는 책을 좋아한다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              subtitle: Text(
                "Мен кітаптарды жақсы көремін.",
                style: TextStyle(
                  color: Color(0xff323478),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "이 책은 재미있어요.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff323478),
                ),
              ),
              subtitle: Text(
                "Бұл кітап қызықты.",
                style: TextStyle(
                  color: Color(0xff323478),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Divider(),
                Row(
                  children: <Widget>[
                    CircleBtn("Білмеймін", Colors.red),
                    CircleBtn("Таңыдым", Colors.yellow),
                    CircleBtn("Сақтадым", Colors.blue),
                    CircleBtn("Меңгердім", Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
