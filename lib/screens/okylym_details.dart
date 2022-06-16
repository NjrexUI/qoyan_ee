import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OkylymDetails extends StatefulWidget {
  static const routeName = "/okylym-details";

  @override
  _OkylymDetailsState createState() => _OkylymDetailsState();
}

class _OkylymDetailsState extends State<OkylymDetails> {
  bool checks = false;

  final String text1 =
      "- 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요. - 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요. - 안녕하세요?     제이슨이에요.  - 저는 미국 사람이에요.  - 저는 학생이에요 - 안녕하세요?     제이슨이에요.  - 안녕하세요?     제이슨이에요. .";

  final String text2 =
      "- Сәлем    (мен) Джейсонмын. - Мен американдықпын. - Мен студентпін. - Сәлем    (мен) Джейсонмын. - Мен американдықпын. - Мен студентпін. - Сәлем    (мен) Джейсонмын. - Мен американдықпын. - Мен студентпін. - Сәлем    (мен) Джейсонмын. - Мен американдықпын. - Мен студентпін.";

  Widget textContainer(String text) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffEDEAFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("안녕하세요? "),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            // Text(
            //   "Корей",
            //   textAlign: TextAlign.start,
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            textContainer(text1),
            // ignore: deprecated_member_use
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0xffAB9CD3),
              child: Text(
                "Аудармасын оқу",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  checks = !checks;
                });
              },
            ),
            checks == true
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(),
                      ),
                      textContainer(text2),
                    ],
                  )
                : Container(),
            // Text(
            //   "Қазақ",
            //   textAlign: TextAlign.start,
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
    );
  }
}
