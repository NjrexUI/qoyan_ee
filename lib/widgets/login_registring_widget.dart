import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/password_recovery.dart';

import '../widgets/continue_button.dart';
import '../screens/dengeiler_screen.dart';

class LoginRegistreWidget extends StatefulWidget {
  final String title;
  final String description;
  final String textBtn;
  final bool checking;
  final Widget widgetBottom;

  LoginRegistreWidget(
    this.title,
    this.description,
    this.textBtn,
    this.checking,
    this.widgetBottom,
  );

  @override
  _LoginRegistreWidgetState createState() => _LoginRegistreWidgetState();
}

class _LoginRegistreWidgetState extends State<LoginRegistreWidget> {
  Widget inputField(
      String textLabel, TextInputType typeInput, bool checkIfPassword) {
    bool _passwordVisible = true;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffAB9CD3),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          labelText: textLabel,
          //suffixIcon: checkIfPassword
            //  ? IconButton(
              //    icon: Icon(
                //    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                 // ),
                  //onPressed: () {
                    //setState(() {
                      //_passwordVisible = !_passwordVisible;
                    //});
                  //},
                //)
              //: null,
        ),
        keyboardType: typeInput,
      obscureText: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff323478),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 45),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff323478),
              ),
            ),
            SizedBox(height: 40),
            inputField("e-mail", TextInputType.emailAddress, false),
            inputField("Құпиясөз", TextInputType.visiblePassword, true),
            widget.checking
                ? inputField("Құпиясөзді қайталаңыз",
                    TextInputType.visiblePassword, true)
                // ignore: deprecated_member_use
                : FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(PasswordRecoveryScreen.routeName);
                    },
                    child: Text(
                      "Құпиясөзді ұмыттыңыз ба?",
                      style: TextStyle(
                          color: Color(0xff323478),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30),
              child: ContinueButton(
                (ctx) {
                  Navigator.of(ctx).popAndPushNamed(Dengeiler.routeName);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: widget.widgetBottom,
            ),
          ],
        ),
      ),
    );
  }
}
