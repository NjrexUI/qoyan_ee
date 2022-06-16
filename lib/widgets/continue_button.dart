import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final Function function;

  ContinueButton(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 275,
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        color: Color(0xffAB9CD3),
        child: Text(
          "Жалғастыру",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () => function(context),
      ),
    );
  }
}
