import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new Column(
          // this is our main page
          children: <Widget>[
            new Expanded(
                child: new Material(
              // true button
              color: Colors.greenAccent,
              child: new InkWell(
                onTap: () => print("You answered true"),
                child: new Center(
                  child: new Container(
                    child: new Text("True"),
                  ),
                ),
              ),
            )),
            new Expanded(
                child: new Material(
              // false button
              color: Colors.redAccent,
              child: new InkWell(
                onTap: () => print("You answered false"),
                child: new Center(
                  child: new Container(
                    child: new Text("False"),
                  ),
                ),
              ),
            ))
          ],
        )
      ],
    );
  }
}
