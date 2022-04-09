import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle customStyle = TextStyle(
      color: Colors.amberAccent,
      fontSize: 52,
      fontWeight: FontWeight.w300,
      letterSpacing: 3,
      shadows: [
        Shadow(
          color: Colors.black,
          blurRadius: 5,
          offset: Offset(2, 1.5),
        ),
        Shadow(
          color: Colors.red.withOpacity(.4),
          blurRadius: 7,
          offset: Offset(2.5, 2),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: Center(
        child: Text(
          'Hello Nurse\n:P',
          textAlign: TextAlign.center,
          style: customStyle,
        ),
      ),
    );
  }
}
