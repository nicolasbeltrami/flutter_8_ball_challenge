import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
    color: Colors.blue,
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar( 
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
        ),
        body: 
        Ball(),
      );
  }
}

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber =Random().nextInt(5)+1;
              print('The image is $ballNumber');
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
          ),
      ),
    );
  }
}