import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'registration_screen.dart';
import '../widgets/login_registring_widget.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login-screen";

  Widget widgetForBottom(BuildContext context) {
    // ignore: deprecated_member_use
    Widget button = FlatButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RegistrScreen.routeName);
      },
      child: Text(
        "Тіркелу",
        style: TextStyle(
          color: Color(0xff323478),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    return Column(
      children: <Widget>[
        Text(
          "Егер сіз әлі де тіркелмеген болсаңыз,",
          style: TextStyle(
            color: Color(0xff323478),
          ),
        ),
        button,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoginRegistreWidget(
      "Кіру",
      "Кіріңіз",
      "Кіру",
      false,
      widgetForBottom(context),
    );
  }
}
