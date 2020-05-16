import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sopfluttertask1/pages/quiz_screen.dart';
import '../main.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quizy!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                print('click');
                Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(builder: (context) => Home())
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
