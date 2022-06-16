import 'package:flutter/material.dart';
import 'package:qoianeefrontend/screens/okylym_details.dart';
import 'package:qoianeefrontend/widgets/card_item.dart';

class OkylymScreen extends StatelessWidget {
  static const routeName = "/okylym-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Оқылым"),
        elevation: 0,
        backgroundColor: Color(0xffAB9CD3),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return CardDengei("Грамматика ", "Диалогтар және сөз тіркестері",
                () {
              Navigator.of(context).pushNamed(OkylymDetails.routeName);
            });
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
