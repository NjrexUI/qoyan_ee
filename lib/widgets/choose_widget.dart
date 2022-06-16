import 'package:flutter/material.dart';

class ChooseWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color containerColor;
  final Function push;

  ChooseWidget(this.title, this.subtitle, this.containerColor, this.push);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: push,
        contentPadding: EdgeInsets.all(30),
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: containerColor,
          ),
          width: 7.5,
          height: 100,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
