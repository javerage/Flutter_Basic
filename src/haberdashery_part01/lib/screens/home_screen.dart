import 'package:flutter/material.dart';
import 'package:haberdashery/routes/app_routes.dart';
import 'package:haberdashery/themes/primary_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(title: const Text('data')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].label),
                  leading: Icon(menuOptions[index].icon,
                      color: PrimaryTheme.primaryColor),
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.countMenuOptions));
  }
}
