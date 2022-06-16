import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GrammarJinaq extends StatefulWidget {
  static const routeName = "/grammar-jinagi";
  bool checkS = false;
  List<bool> bools = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  _GrammarJinaqState createState() => _GrammarJinaqState();
}

Widget listTileSoz(int index, String title, Function func, bool check) {
  return Column(
    children: <Widget>[
      Container(
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
          onTap: func,
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
        ),
      ),
      check == true
          ? Container(
              decoration: BoxDecoration(
                color: Color(0xffAB9CD3),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text("Здравствуйте. Как вас зовут?"),
                  Text("Привет! Меня зовут Нурахмет. А вас как?"),
                  Text("Меня зовут Аружан. Приятно познакомиться."),
                  Text("Взаимно. Какая хорошая погода."),
                  Text("Полностью с вами согласна."),
                  Text("Не подскажите, который час?"),
                  Text("Сейчас уже за полночь. Очень поздно."),
                ],
              ),
            )
          : Container(),
    ],
  );
}

class _GrammarJinaqState extends State<GrammarJinaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Грамматика жинағы"),
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, i) {
          return listTileSoz(
            i + 1,
            "title",
            () {
              setState(() {
                widget.bools[i] = !widget.bools[i];
              });
              print(widget.bools[i]);
            },
            widget.bools[i],
          );
        },
      ),
    );
  }
}
