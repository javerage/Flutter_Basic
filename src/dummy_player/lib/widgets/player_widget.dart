import 'package:flutter/material.dart';

// inicial
/*
class PlayerWidget extends StatelessWidget {  
  final TextStyle _textStyle = const TextStyle(color: Colors.red, fontSize: 24);
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            iconSize: 150,
          ),
          Text('Press to play song...', style: _textStyle)
        ],
      ),
    );
  }
}
*/

// Segundo paso
/*
class PlayerWidget extends StatefulWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  State<PlayerWidget> createState() => PlayerWidgetState();
}

class PlayerWidgetState extends State<PlayerWidget> {
  final TextStyle _textStyle = const TextStyle(color: Colors.red, fontSize: 24);
  bool isPlaying = false;
  String statusSong = 'Play';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                isPlaying = !isPlaying;
                statusSong = isPlaying ? 'Pause': 'Play';
              });
            },
            icon: isPlaying
                ? const Icon(Icons.pause)
                : const Icon(Icons.play_arrow),
            iconSize: 150,
          ),
          //Text(isPlaying ? 'Pause' : 'Play', style: _textStyle)
          Text(statusSong, style: _textStyle)
        ],
      ),
    );
  }
}
*/

// Final
class PlayerWidget extends StatelessWidget {
  final TextStyle _textStyle = const TextStyle(color: Colors.red, fontSize: 24);
  final String statusSong;
  final bool isPlaying;
  final Function playMusic;
  final Function pauseSong;

  const PlayerWidget(
      {Key? key,
      required this.statusSong,
      required this.isPlaying,
      required this.playMusic,
      required this.pauseSong})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () => isPlaying ? pauseSong() : playMusic(),
            icon: isPlaying
                ? const Icon(Icons.pause)
                : const Icon(Icons.play_arrow),
            iconSize: 150,
          ),
          Text(statusSong, style: _textStyle)
        ],
      ),
    );
  }
}
