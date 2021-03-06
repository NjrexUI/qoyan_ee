import 'package:flutter/material.dart';
import '../model/model_quiz.dart';
import 'quiz_screen.dart';
import '../model/api_adapter.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Quiz> quizs = [];
  bool isLoading = false;

  _fetchQuizs() async {
    setState(() {
      isLoading = true;
    });
    //    final url = Uri.parse('http://127.0.0.1:8000/api/singer/');
    final response = await http
        .get(Uri.parse('https://drf-quiz-test.herokuapp.com/quiz/3/'));
    if (response.statusCode == 200) {
      setState(() {
        quizs = parseQuizs(utf8.decode(response.bodyBytes));
        isLoading = false;
      });
    } else {
      throw Exception('failed to load data');
    }
  }

  // List<Quiz> quizs = [
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  // ];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text('My Quiz APP'),
            backgroundColor: Color(0xffAB9CD3),
            leading: Container(),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  'assets/images/quiz.jpeg',
                  width: width * 0.8,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.024),
              ),
              // Text(
              //   '????????? ?????? ???',
              //   style: TextStyle(
              //     fontSize: width * 0.065,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   '????????? ?????? ??? ?????????????????????.\n????????? ?????? ?????? ????????? ???????????????.',
              //   textAlign: TextAlign.center,
              // ),
              Padding(
                padding: EdgeInsets.all(width * 0.048),
              ),
              // _buildStep(width, '1. ???????????? ????????? ?????? 3?????? ???????????????.'),
              // _buildStep(width, '2. ????????? ??? ?????? ????????? ?????? ???\n?????? ?????? ????????? ???????????????.'),
              // _buildStep(width, '3. ????????? ?????? ??????????????????!'),
              Padding(
                padding: EdgeInsets.all(width * 0.048),
              ),
              Container(
                padding: EdgeInsets.only(bottom: width * 0.036),
                child: Center(
                  child: ButtonTheme(
                    minWidth: width * 0.8,
                    height: height * 0.06,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RaisedButton(
                      child: Text(
                        '?????? ?????? ??????',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xffAB9CD3),
                      onPressed: () {
                        _scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Row(
                              children: <Widget>[
                                CircularProgressIndicator(),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.036),
                                ),
                                Text('?????? ???....'),
                              ],
                            ),
                          ),
                        );
                        _fetchQuizs().whenComplete(() {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                quizs: quizs,
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildStep(double width, String title) {
  //   return Container(
  //     padding: EdgeInsets.fromLTRB(
  //       width * 0.048,
  //       width * 0.024,
  //       width * 0.048,
  //       width * 0.024,
  //     ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Icon(
  //           Icons.check_box,
  //           size: width * 0.04,
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(right: width * 0.024),
  //         ),
  //         Text(title),
  //       ],
  //     ),
  //   );
  // }
}
