import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void plays(int a) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audios/note$a.wav"),
    );
    assetsAudioPlayer.play();
  }

  Expanded notes({Color color, int s}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          plays(s);
        },
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
                notes(color: Colors.deepPurple, s: 1),
                notes(color: Colors.indigo, s: 2),
                notes(color: Colors.blueAccent, s: 3),
                notes(color: Colors.green, s: 4),
                notes(color: Colors.yellowAccent, s: 5),
                notes(color: Colors.orange, s: 6),
                notes(color: Colors.red, s: 7),
              ],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
