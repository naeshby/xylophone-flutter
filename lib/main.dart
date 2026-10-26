import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void note(var note) async {
    final player = AudioPlayer();

    await player.play(AssetSource("note$note.wav"));
    print("note$note played");
  }

  Expanded buildkey(int num, Color pad) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
              shape: BeveledRectangleBorder(),
              backgroundColor: pad,
              foregroundColor: Colors.white),
          onPressed: () {
            note(num);
          },
          child: Text("Button $num")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.blue),
              buildkey(6, Colors.indigo),
              buildkey(7, Colors.purple ),
            ],
          ),
        ),
      ),
    );
  }
}