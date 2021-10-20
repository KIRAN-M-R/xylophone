import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // player.loadAll([
    //   'assets_note1.wav',
    //   'assets_note2.wav',
    //   'assets_note3.wav',
    //   'assets_note4.wav',
    //   'assets_note5.wav',
    //   'assets_note6.wav',
    //   'assets_note7.wav'
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 50,
        shadowColor: Colors.black,
        title: Text(
          'XyloPhone',
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buttons(1, Colors.red),
          _buttons(2, Colors.orange),
          _buttons(3, Colors.yellow),
          _buttons(4, Colors.green),
          _buttons(5, Colors.blue),
          _buttons(6, Colors.indigo),
          _buttons(7, Colors.deepPurple),
        ],
      ),
    );
  }

  _onTapped(int i) {
    // player.fixedPlayer!.stop();

    final player = new AudioCache();
    log("clicked  $i button and audio");

    try {
      player.play('assets_note${i}.wav',
          mode: PlayerMode.LOW_LATENCY, stayAwake: false);
    } catch (e) {
      log("error is ${e.toString()}");
    }
  }

  _buttons(int i, var col) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        _onTapped(i);
      },
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(col)),
      child: SizedBox(),
    ));
  }
}
