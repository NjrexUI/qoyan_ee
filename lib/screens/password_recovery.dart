import 'package:flutter/material.dart';

import '../widgets/continue_button.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  static const routeName = "/password-recovery-screen";

  @override
  Widget build(BuildContext context) {
    Widget inputField() {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffAB9CD3),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
            labelText: "e-mail",
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff323478),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 35),
            Text(
              "Құпиясөзді қалпына келтіру",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff323478),
              ),
            ),
            SizedBox(height: 60),
            Text(
              "Электронды поштаңызды жазыңыз",
              style: TextStyle(
                color: Color(0xff323478),
              ),
            ),
            SizedBox(height: 10),
            inputField(),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(30),
              child: ContinueButton(
                (ctx) {
                  return;
                },
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
