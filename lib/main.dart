import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player=AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color=Colors.grey, int sNumber=0}){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(sNumber);
        },
        child: Text(
          '',
        ),
        style: TextButton.styleFrom(
          primary: color,
          backgroundColor: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purpleAccent, sNumber:1),
              buildKey(color: Colors.indigoAccent, sNumber:2),
              buildKey(color: Colors.blueAccent, sNumber:3),
              buildKey(color: Colors.greenAccent, sNumber:4),
              buildKey(color: Colors.yellowAccent, sNumber:5),
              buildKey(color: Colors.orangeAccent, sNumber:6),
              buildKey(color: Colors.redAccent, sNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}