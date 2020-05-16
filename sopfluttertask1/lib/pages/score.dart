import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  @override
  ScoreScreenState createState() => ScoreScreenState();
}

class ScoreScreenState extends State<ScoreScreen> with AutomaticKeepAliveClientMixin<ScoreScreen>{

  @override
  bool get wantKeepAlive => true;

  int score = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'Score',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            '$score',
            style: TextStyle(
              fontSize: 40
            ),
          ),
        ],
      ),
    );
  }

}
