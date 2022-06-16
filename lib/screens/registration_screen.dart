import 'package:flutter/material.dart';
import '../widgets/login_registring_widget.dart';

class RegistrScreen extends StatelessWidget {
  static const routeName = "/registration-screen";

  Widget textforBottom() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        //"Тіркелген болсаңыз, ",
        "Тіркелу арқылы сіз Қолданушы келісімі мен Құпиялық саясаты шарттарын автоматты түрде қабылдайсыз",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff323478),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoginRegistreWidget(
      "Тіркелу",
      "Тіркеліңіз",
      "Тіркелу",
      true,
      textforBottom(),
    );
  }
}
