import 'package:flutter/material.dart';

class OtherInputsScreen extends StatefulWidget {
  const OtherInputsScreen({Key? key}) : super(key: key);

  @override
  State<OtherInputsScreen> createState() => _OtherInputsScreenState();
}

class _OtherInputsScreenState extends State<OtherInputsScreen> {
  double _currentValue = 0.0;
  String _levelUp = '';
  bool isDown = false;
  bool isGood = false;

  void changeValue(double value) {
    _currentValue = value;
    int _level = _currentValue.toInt();

    if (_level >= 0 && _level < 20) {
      _levelUp = 'Directo al oxxo..';
    } else if (_level >= 20 && _level < 40) {
      _levelUp = 'Hay esperanza...';
    } else if (_level >= 40 && _level < 60) {
      _levelUp = 'Hay talento solo falta apoyarlo...';
    } else if (_level >= 60 && _level < 80) {
      _levelUp = 'Si gana concursos...';
    } else {
      _levelUp = 'Level Dios..';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Other Inputs')),
        body: Column(
          children: [
            Slider.adaptive(
              min: 0,
              max: 100,
              value: _currentValue,
              onChanged: (value) => changeValue(value),
              activeColor: Colors.lightBlueAccent,
              thumbColor: Colors.pinkAccent,
              inactiveColor: Colors.blueGrey,
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(_levelUp),
                ),
              ),
            ),
            CheckboxListTile(
              value: isDown,
              title: Text('Candidato a baja'),
              activeColor: Colors.greenAccent,
              checkColor: Colors.pinkAccent,
              onChanged: (value) {
                isDown = value ?? false;
                _currentValue = 0;
                setState(() {});
              },
            ),
            SwitchListTile.adaptive(
              value: isGood,
              title: Text('Discípulo Destacado'),
              activeColor: Colors.pinkAccent,
              activeTrackColor: Colors.cyan,
              secondary: Icon(Icons.gpp_good),
              onChanged: (value) {
                isGood = value;
                _currentValue = isGood ? 100 : 0;
                setState(() {});
              },
            )
          ],
        ));
  }
}
