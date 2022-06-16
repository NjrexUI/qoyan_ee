import 'package:flutter/material.dart';

import './screens/grammar_jinaq_screen.dart';
import './screens/okylym_details.dart';
import './screens/okylym_screen.dart';
import './screens/flipable_words_screen.dart';
import './screens/sozder_jinagi_list.dart';
import './screens/tyndalym_details_screen.dart';
import './screens/tyndalym_screen.dart';
import './screens/sozdik_list_screen.dart';
import './screens/password_recovery.dart';
import './screens/start_quiz_screen.dart';
import './screens/registration_screen.dart';
import './screens/choose_screen.dart';
import './screens/sozder_jinagi.dart';
import './screens/grammar_screen.dart';
import './screens/sabaq_screen.dart';
import './screens/login_screen.dart';
import './screens/dengeiler_screen.dart';
import './screens/sozdik_screen.dart';
import './widgets/main_widget.dart';

void main() {
  runApp(QoyanI());
}

class QoyanI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MainWidget(),
      ),
      routes: {
        OkylymScreen.routeName: (ctx) => OkylymScreen(),
        OkylymDetails.routeName: (ctx) => OkylymDetails(),
        TyndalymDetailsScreen.routeName: (ctx) => TyndalymDetailsScreen(),
        TyndalymScreen.routeName: (ctx) => TyndalymScreen(),
        SozdikListScreen.routeName: (ctx) => SozdikListScreen(),
        FlipableWordsScreen.routeName: (ctx) => FlipableWordsScreen(),
        SozderJinagiListScreen.routeName: (ctx) => SozderJinagiListScreen(),
        GrammarJinaq.routeName: (ctx) => GrammarJinaq(),
        SozdikScreen.routeName: (ctx) => SozdikScreen(),
        Dengeiler.routeName: (ctx) => Dengeiler(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SabaqScreen.routeName: (ctx) => SabaqScreen(),
        GrammarScreen.routeName: (ctx) => GrammarScreen(),
        ChooseScreen.routeName: (ctx) => ChooseScreen(),
        SozderJinagi.routeName: (ctx) => SozderJinagi(),
        RegistrScreen.routeName: (ctx) => RegistrScreen(),
        PasswordRecoveryScreen.routeName: (ctx) => PasswordRecoveryScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
