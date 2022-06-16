import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final String text;
  final Color color;

  CircleBtn(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: FittedBox(
        child: Container(
          width: 80,
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
