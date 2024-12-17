import 'package:flutter/material.dart';
import 'package:quiz_app/elevatedButton.dart';
import 'package:quiz_app/model/question.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key, required this.chooseAn});
  final void Function(String answer) chooseAn;

  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  var currentQurion = 0;
  void answerquestion(String selctanswer) {
    widget.chooseAn(selctanswer);

    setState(() {
      currentQurion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final CurrenrQuestion = questionList[currentQurion];
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            CurrenrQuestion.text,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ...CurrenrQuestion.getshafule().map(
            (answer) {
              return Elevatedbutton1(
                anwer: answer,
                ontap: () {
                  answerquestion(answer);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
