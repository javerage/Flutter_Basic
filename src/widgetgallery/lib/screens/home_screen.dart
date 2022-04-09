import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_route.dart';

class HomeScreen extends StatelessWidget {
  static final _menuOptions = AppRoute.menuOptions;
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(_menuOptions[index].label),
            leading: Icon(_menuOptions[index].icon),
            onTap: () =>
                Navigator.pushNamed(context, _menuOptions[index].route),
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: _menuOptions.length,
        ),
      ),
    );
  }
}
