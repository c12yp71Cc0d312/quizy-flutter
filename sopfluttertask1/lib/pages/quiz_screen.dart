import 'package:flutter/material.dart';
import 'package:sopfluttertask1/pages/score.dart';

import '../questions.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with AutomaticKeepAliveClientMixin<QuizScreen> {

  @override
  bool get wantKeepAlive => true;

  int qno = 1;
  bool choice;
  bool quizOver = false;
  int score = 0;
  ScoreScreenState scoreScreenState = new ScoreScreenState();


  List<Questions> questions = [
    Questions(question: 'Goldfish only have a memory of three seconds', ans: false),
    Questions(question: 'Brazil is the only country in the Americas to have the official language of Portuguese', ans: true),
    Questions(question: 'Darth Vader famously says the line “Luke, I am your father” in The Empire Strikes Back', ans: false),
    Questions(question: 'Stephen Hawking declined a knighthood from the Queen', ans: true),
    Questions(question: 'Nicolas Cage and Michael Jackson both married the same woman', ans: true),
    Questions(question: 'The mathematical name for the shape of a Pringle is hyperbolic paraboloid', ans: true),
    Questions(question: 'The Great Wall of China is visible from space', ans: false),
    Questions(question: 'Japan and Russia did not sign a peace treaty after World War Two so are technically still at war', ans: true),
    Questions(question: 'Vietnamese is an official language in Canada', ans: false),
    Questions(question: 'Lionel Messi has won more Ballon d\'Ors than Cristiano Ronaldo', ans: true),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Question " + '$qno',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  '${questions[qno-1].question}',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 200,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        if(!quizOver) {
                        setState(() {
                          choice = true;
                          if(choice == questions[qno-1].ans) {
                            score++;
                            if(qno == 10)
                              quizOver = true;
                            print('true');
                          }
                          if(qno < 10)
                            qno++;
                        });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Text(
                          'True',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if(!quizOver) {
                          setState(() {
                            choice = false;
                            if (choice == questions[qno - 1].ans) {
                              score++;
                              if (qno == 10)
                                quizOver = true;
                              print('false');
                            }
                            if (qno < 10)
                              qno++;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Text(
                          'False',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Score: $score',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
    );
  }

}
