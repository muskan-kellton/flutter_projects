import 'package:flutter/material.dart';
import 'Quiz_list.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quizlist quizlist = Quizlist();


class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> remarks = [];
  void checkAnswer(bool answerpicked) {
    bool correctAnswer = quizlist.getAnswerText();
    setState(() {
      if (quizlist.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizlist.reset();
        remarks = [];
      } else if (answerpicked == correctAnswer) {
        remarks.add(Icon(Icons.check, color: Colors.green));
      } else {
        remarks.add(Icon(Icons.close, color: Colors.red));
      }

      quizlist.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizlist.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: TextButton(
            onPressed: () {
              checkAnswer(true);
            },
            child: Text(
              'True',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
        )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
                /*remarks.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ));*/
              },
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ),
        ),
        Row(
          children: remarks,
        )
      ],
    );
  }
}
