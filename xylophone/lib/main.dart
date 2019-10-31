import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int notenum) {
    final player = AudioCache();
    player.play('note$notenum.wav');
  }

  Expanded btn({int note,Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play(note);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           btn(note:1,color:Colors.red),
           btn(note:2,color:Colors.orange),
           btn(note:3,color:Colors.yellow),
           btn(note:4,color:Colors.green),
           btn(note:5,color:Colors.teal),
           btn(note:6,color:Colors.blue),
           btn(note:7,color:Colors.purple),

          ],
        )),
      ),
    );
  }
}
