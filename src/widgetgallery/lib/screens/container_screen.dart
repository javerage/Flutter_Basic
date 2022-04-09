import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RectangleContainer(
              child: Text(
                'Hello Nurse\n:P',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 32,
                ),
              ),
              height: 200,
              width: 200,
            ),
            CircleContainer(
              child: Text(
                'Hello Nurse\n:P',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 32,
                ),
              ),
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
