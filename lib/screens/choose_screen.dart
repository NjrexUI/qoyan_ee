import 'package:flutter/material.dart';
import 'package:qoianeefrontend/screens/grammar_jinaq_screen.dart';
import 'package:qoianeefrontend/screens/sozder_jinagi_list.dart';
import 'package:qoianeefrontend/screens/tyndalym_screen.dart';
import '../screens/okylym_screen.dart';

import '../widgets/choose_widget.dart';
import 'sozder_jinagi.dart';

class ChooseScreen extends StatelessWidget {
  static const routeName = "/choose-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          ChooseWidget(
            "Оқылым",
            "Диалогтар және сөз тіркестері",
            Colors.green,
            () {
              Navigator.of(context).pushNamed(OkylymScreen.routeName);
            },
          ),
          ChooseWidget(
            "Тыңдалым",
            "Аудио файлдар",
            Colors.blue,
            () {
              Navigator.of(context).pushNamed(TyndalymScreen.routeName);
            },
          ),
          ChooseWidget(
            "Грамматика жинағы",
            "Диалогтар және сөз тіркестері",
            Colors.orange,
            () {
              Navigator.of(context).pushNamed(GrammarJinaq.routeName);
            },
          ),
          ChooseWidget(
            "Сөздер жинағы",
            "Диалогтар және сөз тіркестері",
            Colors.red,
            () {
              Navigator.of(context).pushNamed(SozderJinagiListScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
