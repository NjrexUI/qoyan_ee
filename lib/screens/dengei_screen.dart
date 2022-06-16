import 'package:flutter/material.dart';
import 'package:qoianeefrontend/screens/sozdik_list_screen.dart';
import 'choose_screen.dart';
import 'sabaq_screen.dart';
import '../widgets/card_item.dart';

class DengeiScreen extends StatelessWidget {
  static const routeName = "/dengei_screen";

  final String titleDengei;

  DengeiScreen(this.titleDengei);

  final texts = [
    "1 Сабақ. 모음",
    "Дауысты дыбыстар",
    "2 Сабақ. 자음",
    "Дауыссыз дыбыстар",
    "3 Сабақ. 받침 ",
    "Соңғы дауыссыздар",
    "4 Сабақ. 안녕하세요?",
    "Қалайсыз?",
    "5 Сабақ. 책이 어디에 있어요?",
    "Кітап қайда тұр?",
    "5 Сабақ. 텔레비전을 봐요.",
    "Мен телевихорды көріп жатырмын.?",
  ];

  Widget listTile(String title, IconData icon, Function request) {
    return ListTile(
      onTap: request,
      leading: Icon(icon),
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              color: Color(0xffbacAB9CD3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Алтынай Болат",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Корей тілі 1 Деңгей",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Column(
                  children: <Widget>[
                    listTile("Қайталау", Icons.book_outlined, () {
                      Navigator.of(context).pushNamed(
                        ChooseScreen.routeName,
                      );
                    }),
                    listTile("Менің сөздерім", Icons.star_border_outlined, () {
                      Navigator.of(context).pushNamed(
                        SozdikListScreen.routeName,
                      );
                    }),
                    listTile("Күнтізбе", Icons.calendar_today, null),
                    listTile("Параметрлер", Icons.settings_outlined, null),
                    listTile("Шығу", Icons.exit_to_app_outlined, null),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffAB9CD3),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          titleDengei,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          CardDengei(texts[0], texts[1], () {
            Navigator.of(context).pushNamed(SabaqScreen.routeName);
          }),
          CardDengei(texts[2], texts[3], null),
          CardDengei(texts[4], texts[5], null),
          CardDengei(texts[6], texts[7], null),
          CardDengei(texts[8], texts[9], null),
        ],
      ),
    );
  }
}
