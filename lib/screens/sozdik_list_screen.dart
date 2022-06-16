import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SozdikListScreen extends StatelessWidget {
  static const routeName = "/menin-upayim";
  Widget listTileSoz(
      int index, String title, String transcription, String translate) {
    AudioPlayer audioPlayer = AudioPlayer();
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffAB9CD3),
          child: IconButton(
            icon: Icon(
              Icons.volume_up,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              audioPlayer.play(
                  "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
            },
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title),
            Text(transcription),
            SizedBox(width: 10),
          ],
        ),
        trailing: Text(translate),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Менің сөздігім"),
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, i) {
          return listTileSoz(
            i + 1,
            "title",
            "transcription",
            "translate",
          );
        },
      ),
    );
  }
}
