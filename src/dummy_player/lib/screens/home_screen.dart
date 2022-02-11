import 'package:flutter/material.dart';
import 'package:dummy_player/widgets/player_widget.dart';
import 'package:dummy_player/widgets/custom_floatingactionbutton.dart';

// Base
/*
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
          title: const Text('Dummy Player'), elevation: 0, centerTitle: true),
      body: const PlayerWidget(),
      floatingActionButton: const FloatingActionButton(onPressed: (){}, child: Icon(Icons.list),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
*/

// Final
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = false;
  String statusSong = 'Play';

  void playMusic() {
    isPlaying = true;
    statusSong = 'Pause';
    setState(() {});
  }

  void pauseSong() {
    isPlaying = false;
    statusSong = 'Play';
    setState(() {});
  }

  void stopSong() {
    isPlaying = false;
    statusSong = 'Stop Music';
    setState(() {});
  }

  void previusSong() {
    isPlaying = false;
    statusSong = 'Previus song';
    setState(() {});
  }

  void nextSong() {
    isPlaying = false;
    statusSong = 'Next Song';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
          title: const Text('Dummy Player'), elevation: 0, centerTitle: true),
      body: PlayerWidget(
          statusSong: statusSong,
          isPlaying: isPlaying,
          playMusic: playMusic,
          pauseSong: pauseSong),
      floatingActionButton: CustomFloatingActionButton(
          stopMusic: stopSong, previusSong: previusSong, nextSong: nextSong),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
