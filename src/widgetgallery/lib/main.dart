import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_route.dart';
import 'package:widgetgallery/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Gallery',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.getRoutes(),
    );
  }
}