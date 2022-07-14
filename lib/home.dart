import 'package:flutter/material.dart';
import 'package:quantumquiz/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  int questionnum = 0;
  List<Widget> scorekeeper = [];
  List<Ques> questionBank = [
    Ques(
        q: 'In Zindagi Na Milegi Dobara, Kabir suggests skydiving as his choice of adventure sports.',
        a: false),
    Ques(
        q: 'Ranbir Kapoor’s character name in Rockstar was Janardhan', a: true),
    Ques(
        q: 'In Yeh Jawaani Hai Deewani, Aditi was initially in love with Avinash.',
        a: true),
    Ques(
        q: 'Bananas are curved because they grow upwards towards the sun',
        a: true),
    Ques(q: 'Matches were invented before lighters', a: false),
    Ques(q: 'Intership is a myth', a: true),
    Ques(q: 'do you love summer', a: true),
    Ques(q: 'Aniket is paras\'s bff', a: true),
    Ques(q: 'Para TS is a piro', a: false),
    Ques(q: 'bodycount !=0 >>>>>>>>> placements', a: true),
    Ques(q: 'Intern grp was very helpful', a: false),
  ];

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
                questionBank[questionnum].quesT,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctanswer = questionBank[questionnum].quesA;
                if (correctanswer == true) {
                  setState(() {
                    if (questionnum < questionBank.length - 1) {
                      questionnum++;
                    } else {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "THANK YOU",
                        desc: "No more questions",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                            radius: BorderRadius.circular(0.0),
                          ),
                        ],
                      ).show();
                    }
                    scorekeeper.add(Icon(
                      Icons.check_circle_outline_sharp,
                      color: Colors.lightGreenAccent,
                    ));
                  });
                } else {
                  setState(() {
                    if (questionnum < questionBank.length - 1) {
                      questionnum++;
                    } else {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "THANK YOU",
                        desc: "No more questions",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                            radius: BorderRadius.circular(0.0),
                          ),
                        ],
                      ).show();
                    }
                    scorekeeper.add(Icon(
                      Icons.close_rounded,
                      color: Colors.red,
                    ));
                  });
                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctanswer = questionBank[questionnum].quesA;
                if (correctanswer == false) {
                  setState(() {
                    if (questionnum < questionBank.length - 1) {
                      questionnum++;
                    } else {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "THANK YOU",
                        desc: "No more questions",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                            radius: BorderRadius.circular(0.0),
                          ),
                        ],
                      ).show();
                    }
                    scorekeeper.add(Icon(
                      Icons.check_circle_outline_sharp,
                      color: Colors.lightGreenAccent,
                    ));
                  });
                } else {
                  setState(() {
                    if (questionnum < questionBank.length - 1) {
                      questionnum++;
                    } else {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "THANK YOU",
                        desc: "No more questions",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                            radius: BorderRadius.circular(0.0),
                          ),
                        ],
                      ).show();
                    }
                    scorekeeper.add(Icon(
                      Icons.close_rounded,
                      color: Colors.red,
                    ));
                  });
                }
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}

/*
question1: , false,
question2: , true,
question3: , true,
*/
