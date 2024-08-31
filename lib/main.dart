// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: MyApp(),
          ),
          backgroundColor: Colors.black,
        ),
      )
  );
}

class MyApp extends StatelessWidget {

  ElevatedButton genButton(Color color, int no){
    return ElevatedButton(
        onPressed: (){
          playSound(no);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Container(
          color: color,
        ));
  }

  void playSound(int no){
    final player = AudioPlayer();
    player.play(AssetSource('note$no.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: genButton(Colors.purple, 1),
        ),
        Expanded(
          child: genButton(Colors.indigo, 2),
        ),
        Expanded(
          child: genButton(Colors.blue, 3),
        ),
        Expanded(
          child: genButton(Colors.green, 4),
        ),
        Expanded(
          child: genButton(Colors.yellow, 5),
        ),
        Expanded(
          child: genButton(Colors.orange, 6),
        ),
        Expanded(
          child: genButton(Colors.red, 7),
        )
      ],
    );
  }
}
