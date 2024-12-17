import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionScreen.dart';
import 'package:quiz_app/ResultScreen.dart';
import 'package:quiz_app/StartScreen.dart';
import 'package:quiz_app/model/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectanswer = [];
  var acrivescreen = "startscreen";
  void swichScreen() {
    setState(() {
      acrivescreen = "questionscreen";
    });
  }

  void chooseAnswe(String answer) {
    selectanswer.add(answer);
    if (selectanswer.length == questionList.length) {
      setState(() {
        acrivescreen = "Resultscreen";
      });
    }
  }

  void restscren() {
    setState(() {
      selectanswer = [];
      acrivescreen = "startscreen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = Startscreen(
      startQiuz: () {
        swichScreen();
      },
    );
    if (acrivescreen == "questionscreen") {
      screenwidget = Questionscreen(
        chooseAn: chooseAnswe,
      );
    }
    if (acrivescreen == "Resultscreen") {
      screenwidget = Resultscreen(
        reset: restscren,
        Resultanwers: selectanswer,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Color.fromARGB(102, 104, 58, 183),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: screenwidget,
          ),
        ),
      ),
    );
  }
}
