import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/question.dart';
import 'package:quiz_app/sumarrydata.dart';

class Resultscreen extends StatefulWidget {
  const Resultscreen(
      {super.key, required this.Resultanwers, required this.reset});
  final void Function() reset;
  final List<String> Resultanwers;
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> sumarry = [];
    for (var i = 0; i < Resultanwers.length; i++) {
      sumarry.add({
        "question_index": i,
        "question": questionList[i].text,
        "correct_answer": questionList[i].answer[0],
        "user_answer": Resultanwers[i]
      });
    }

    return sumarry;
  }

  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  @override
  Widget build(BuildContext context) {
    final sammarydata = widget.getsummarydata();

    final totalquetion = questionList.length;
    final totalcorrectanswer = sammarydata.where(
      (element) {
        return element['user_answer'] == element['correct_answer'];
      },
    ).length;
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "you answeresd $totalcorrectanswer out of $totalquetion question correctly!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Sumarrydata(sammarydata),
            SizedBox(
              height: 25,
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: widget.reset,
                child: Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
