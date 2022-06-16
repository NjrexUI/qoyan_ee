import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

import '../widgets/continue_button.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Qoianee",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color(0xff323478),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Корей тілін бірге үйренейік!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff323478),
          ),
        ),
        Container(
          height: 450,
          child: Image.asset(
            "assets/images/qoyani_logo.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ContinueButton((ctx) {
          Navigator.of(ctx).popAndPushNamed(
            LoginScreen.routeName,
          );
        }),
      ],
    );
  }
}
