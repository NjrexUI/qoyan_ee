import 'package:flutter/material.dart';

class SozderJinagi extends StatelessWidget {
  static const routeName = "/sozdik-jinagi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (ctx, i) => Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      size: 50,
                    ),
                    Text(
                      "Ұлттар",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
