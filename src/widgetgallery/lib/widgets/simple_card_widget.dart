import 'package:flutter/material.dart';
import 'package:widgetgallery/themes/app_theme.dart';

class SimpleCardWidget extends StatelessWidget {
  const SimpleCardWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shadowColor: AppTheme.primaryColor,
        child: Column(
          children: [
            ListTile(
              title: Text(title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(
                description,
                textAlign: TextAlign.justify,
              ),
              leading: const Icon(Icons.mail),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
