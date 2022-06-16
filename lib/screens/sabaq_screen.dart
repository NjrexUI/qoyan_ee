import 'package:flutter/material.dart';
import 'start_quiz_screen.dart';

import 'grammar_screen.dart';
import 'sozdik_screen.dart';
import 'start_quiz_screen.dart';

class SabaqScreen extends StatelessWidget {
  static const routeName = "/sabaq_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffAB9CD3),
        title: Text(
          "1 Сабақ. 모음",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white),
          ),
        ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SozdikScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // Icon(
                      // Icons.translate,
                      //size: 35,
                      //),
                      Text(
                        "Сөздік",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff323478),
                        ),
                      ),
                      Container(
                        height: 137,
                        child: Image.asset(
                          "assets/images/rab_f2.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(GrammarScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 140,
                        child: Image.asset(
                          "assets/images/cat_f.png",
                        ),
                      ),
                      Text(
                        "Грамматика",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff323478),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Icon(
                          //Icons.notes,
                          //size: 35,
                          //),
                          Text(
                            "Жаттығу",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff323478),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 140,
                        child: Image.asset(
                          "assets/images/practice.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: null,
      //   backgroundColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   selectedItemColor: Colors.purple,
      //   currentIndex: 1,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       icon: Icon(Icons.pages),
      //       // ignore: deprecated_member_use
      //       title: Container(
      //         height: 0.0,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       icon: Icon(Icons.watch),
      //       // ignore: deprecated_member_use
      //       title: Container(
      //         height: 0.0,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       icon: Icon(Icons.star),
      //       // ignore: deprecated_member_use
      //       title: Container(
      //         height: 0.0,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       icon: Icon(Icons.book_sharp),
      //       // ignore: deprecated_member_use
      //       title: Container(
      //         height: 0.0,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       icon: Icon(Icons.person),
      //       // ignore: deprecated_member_use
      //       title: Container(
      //         height: 0.0,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
