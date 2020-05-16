import 'package:flutter/material.dart';
import 'package:sopfluttertask1/pages/quiz_screen.dart';
import 'package:sopfluttertask1/pages/score.dart';
import 'package:sopfluttertask1/pages/startscreen.dart';
import 'package:sopfluttertask1/questions.dart';

void main() {
  runApp(MaterialApp(
    home: StartScreen(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{

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

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quizy!',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Quiz'),
              Tab(text: 'Score')
            ]
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            QuizScreen(),
            ScoreScreen()
          ]
      ),
    );
  }
}
