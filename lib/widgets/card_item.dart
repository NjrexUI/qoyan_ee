import 'package:flutter/material.dart';

class CardDengei extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function push;

  CardDengei(this.title, this.subtitle, this.push);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.only(
          right: 15,
          left: 15,
          top: 5,
          bottom: 20,
        ),
        child: ListTile(
          onTap: push,
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff323478),
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Color(0xff323478),
            ),
          ),
        ),
      ),
    );
  }
}
