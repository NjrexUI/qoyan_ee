import 'package:flutter/material.dart';

import 'package:qoianeefrontend/screens/flipable_words_screen.dart';
import 'package:qoianeefrontend/widgets/card_item.dart';

class SozderJinagiListScreen extends StatelessWidget {
  static const routeName = "/sozder-list-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Сөздер жинағы"),
        elevation: 0,
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return CardDengei("Грамматика ", "Диалогтар және сөз тіркестері",
                () {
              Navigator.of(context).pushNamed(FlipableWordsScreen.routeName);
            });
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
