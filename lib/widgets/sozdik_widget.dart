import 'package:flutter/material.dart';

class SozdikWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Сөздік",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
      ),
      body: Card(
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ListTile(
                title: Text("책"),
                subtitle: Text("Кітап"),
                trailing: IconButton(
                  color: Color(0xffAB9CD3),
                  icon: Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                title: Text("Кітап."),
                subtitle: Text("Зат есім"),
              ),
              ListTile(
                title: Text("책을 일고 싶어요"),
                subtitle: Text("Кітапты оқығым келеді"),
              ),
              ListTile(
                title: Text("이 책은 재미있어요."),
                subtitle: Text("Бұл кітап қызықты"),
              ),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: FittedBox(
                      child: Container(
                        width: 80,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.red,
                            ),
                            Text(
                              "Білмеймін",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: FittedBox(
                      child: Container(
                        width: 80,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                            ),
                            Text(
                              "Таныдым",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: FittedBox(
                      child: Container(
                        width: 80,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                            ),
                            Text(
                              "Сақтадым",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: FittedBox(
                      child: Container(
                        width: 80,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.green,
                            ),
                            Text(
                              "Меңгердім",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
