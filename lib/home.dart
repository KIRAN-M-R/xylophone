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
    // TODO: implement initState
    super.initState();
    player = new AudioCache();
    player.loadAll([
      'assets_note1.wav',
      'assets_note2.wav',
      'assets_note3.wav',
      'assets_note4.wav',
      'assets_note5.wav',
      'assets_note6.wav',
      'assets_note7.wav'
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(1),
              child: Container(
                height: 20,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(2),
              child: Container(
                height: 20,
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(3),
              child: Container(
                height: 20,
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(4),
              child: Container(
                height: 20,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(5),
              child: Container(
                height: 20,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(6),
              child: Container(
                height: 20,
                color: Colors.indigo,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: _onTapped(7),
              child: Container(
                height: 20,
                color: Colors.deepPurple,
              ),
            ),
          )
        ],
      ),
    );
  }

  _onTapped(int i) {
    print("clicked  $i");
    try {
      player.play('assets_note${i}.wav');
    } catch (e) {
      log(e.toString());
    }
  }
}
