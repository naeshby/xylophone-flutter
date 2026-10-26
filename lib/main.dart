import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void note(var note) async {
    final player = AudioPlayer();

    await player.play(AssetSource("note$note.wav"));
    print("note$note played");
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
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(1);
                    },
                    child: Text("Button 1")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(2);
                    },
                    child: Text("Button 2")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(3);
                    },
                    child: Text("Button 3")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(3);
                    },
                    child: Text("Button 3")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(4);
                    },
                    child: Text("Button 4")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(5);
                    },
                    child: Text("Button 5")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(6);
                    },
                    child: Text("Button 6")),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      note(7);
                    },
                    child: Text("Button 7")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
