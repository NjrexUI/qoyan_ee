import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:qoianeefrontend/screens/tyndalym_details_screen.dart';

class TyndalymScreen extends StatelessWidget {
  static const routeName = "/tyndalym-screen";

  Widget listTileSoz(int index, String title, String translate, Function func) {
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
          child: Text(
            index.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(title),
        trailing: Container(
          height: 150,
          width: 150,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: func,
                icon: Icon(
                  Icons.text_snippet,
                ),
              ),
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
              // IconButton(
              //   onPressed: () {
              //     audioPlayer.stop();
              //   },
              //   icon: Icon(
              //     Icons.stop,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Тыңдалым"),
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, i) {
          return listTileSoz(
            i + 1,
            "title",
            "translate",
            () {
              Navigator.of(context).pushNamed(TyndalymDetailsScreen.routeName);
            },
          );
        },
      ),
    );
  }
}
