import 'package:audioplayers/audioplayers.dart';
// import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp( XylophoneApp());

}
class XylophoneApp extends StatelessWidget {
 void playSound(int soundName){
   final player = AudioPlayer();
   player.play(AssetSource('note$soundName.wav'));
 }

 Expanded buildKey({required Color color, required int soundNumber}){
   return Expanded(
     child: TextButton(
       onPressed: (){
         playSound(soundNumber);
       },
       child: Text(''),
       style: TextButton.styleFrom(
         backgroundColor: color,
       ),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.orange, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.white, soundNumber: 6),
              buildKey(color: Colors.yellow, soundNumber: 7),

            ],
          ),

        ),
      ),
    );
  }
}


