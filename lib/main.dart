import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("8 Ball"),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballPrediction = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      ballPrediction = Random().nextInt(5)+1;
                    });
                  },
                  child: Image.asset('images/ball$ballPrediction.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

