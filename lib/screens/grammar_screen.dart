import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GrammarScreen extends StatelessWidget {
  static const routeName = "/grammar_screen";

  Widget grammarCard(Color col) {
    return Card(
      elevation: 10,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Hi, My name is Nurax Boy!",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: col,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  width: 5,
                  decoration: BoxDecoration(
                    color: col,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("Здравствуйте. Как вас зовут?"),
                    Text("Привет! Меня зовут Нурахмет. А вас как?"),
                    Text("Меня зовут Аружан. Приятно познакомиться."),
                    Text("Взаимно. Какая хорошая погода."),
                    Text("Полностью с вами согласна."),
                    Text("Не подскажите, который час?"),
                    Text("Сейчас уже за полночь. Очень поздно."),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAB9CD3),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Грамматика",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            grammarCard(Colors.green),
            SizedBox(height: 20),
            grammarCard(Colors.blue),
          ],
        ),
      ),
    );
  }
}
