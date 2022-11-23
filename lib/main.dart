import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded soundButton({Color color, int noteNumber, String title}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(
          color: color,
          child: Center(
            child: Text( title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
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
            children: [
              soundButton(color: Colors.red, noteNumber: 1, title: 'До'),
              soundButton(color: Colors.orange, noteNumber: 2, title: 'Ре'),
              soundButton(color: Colors.yellow, noteNumber: 3, title: 'Ми'),
              soundButton(color: Colors.green, noteNumber: 4, title: 'Фа'),
              soundButton(color: Colors.lightBlueAccent, noteNumber: 5, title: 'Соль'),
              soundButton(color: Colors.blue, noteNumber: 6, title: 'Ля'),
              soundButton(color: Colors.purple, noteNumber: 7, title: 'Си'),
            ],
          ),
        ),
      ),
    );
  }
}


