import 'package:flutter/material.dart';
import 'package:widgetgallery/resources/app_resources.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              elevation: 7,
              title: const Text('Say Hello'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hola Enfermera :P...'),
                  SizedBox(),
                  Image(
                    image: AssetImage(AppResources.iconApp),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  )
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancelar'))
              ],
            ),
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Screen')),
      body: Center(
          child: ElevatedButton(
              onPressed: () => showAlert(context),
              child: const Text('Say Hello...'))),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context), child: Icon(Icons.close)),
    );
  }
}
