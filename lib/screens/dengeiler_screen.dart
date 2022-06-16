import 'package:flutter/material.dart';
import 'dengei_screen.dart';

import '../widgets/card_item.dart';

class Dengeiler extends StatefulWidget {
  static const routeName = "/dengeiler_screen";
  @override
  _DengeilerState createState() => _DengeilerState();
}

class _DengeilerState extends State<Dengeiler> {

  final texts = [
    "초급 1 Деңгей",
    "초급 2 Деңгей",
    "중급 3 Деңгей",
    "중급 4 Деңгей",
  ];

  final descriptions = [
    "Бастапқы деңгейдегі сабақтар",
    "Бастапқы деңгейдегі сабақтар",
    "Жеткілікті деңгейдегі сабақтар",
    "Жоғарғы деңгейдегі сабақтар",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xffAB9CD3),
            title: Text(
              "Деңгейіңізді таңдаңыз",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 0,
          ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                child: Image.asset(
                  "assets/images/choose_level.jpg",
                ),
              ),
              CardDengei(texts[0], descriptions[0], () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) { return DengeiScreen(texts[0]);}));}),
              CardDengei(texts[1], descriptions[1], () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) { return DengeiScreen(texts[1]);}));}),
              CardDengei(texts[2], descriptions[2], () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) { return DengeiScreen(texts[2]);}));}),
              CardDengei(texts[3], descriptions[3], () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) { return DengeiScreen(texts[3]);}));}),
            ],
          ),
        ),
      ),
    );
  }
}

