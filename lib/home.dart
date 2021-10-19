import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AudioCache player;

  @override
  void initState() {
    super.initState();
    player = new AudioCache();
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
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 94.5,
            child: TextButton(
              onPressed: _onTapped(1),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: SizedBox(),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              onPressed: _onTapped(2),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              child: SizedBox(),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              onPressed: _onTapped(3),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              child: SizedBox(),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              onPressed: _onTapped(4),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: SizedBox(),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              onPressed: _onTapped(5),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: SizedBox(),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo)),
              child: SizedBox(),
              onPressed: _onTapped(6),
            ),
          ),
          SizedBox(
            height: 94.5,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurple)),
              child: SizedBox(),
              onPressed: _onTapped(7),
            ),
          ),
        ],
      ),
    );
  }

  _onTapped(int i) {
    // player.fixedPlayer!.stop();
    log("clicked  $i button and audio");
    try {
      player.play('assets_note${i}.wav',
          mode: PlayerMode.LOW_LATENCY, stayAwake: false);
    } catch (e) {
      log("error is ${e.toString()}");
    }
  }
}
