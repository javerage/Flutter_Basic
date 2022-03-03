import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';
import 'package:widgetgallery/screens/screens.dart';

class AppRoute {
  static const String initialRoute = 'home';
  static List<ItemMenu> menuOptions = <ItemMenu>[
    ItemMenu(
        label: 'Home Screen',
        route: 'home',
        icon: Icons.house,
        screen: const HomeScreen()),
    ItemMenu(
        label: 'Lista basica Screen',
        route: 'lvbasica',
        icon: Icons.list,
        screen: const ListaBasicaScreen()),
    ItemMenu(
        label: 'Lista basica horizontal Screen',
        route: 'lvhorizontal',
        icon: Icons.list_alt,
        screen: const ListaHorizontalScreen()),
    ItemMenu(
        label: 'Gridview Screen',
        route: 'gridview',
        icon: Icons.list_sharp,
        screen: const GridViewScreen()),
    ItemMenu(
        label: 'Card Screen',
        route: 'card',
        icon: Icons.margin,
        screen: const CardScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (var item in menuOptions) {
      routes.addAll({item.route: (context) => item.screen});
    }

    return routes;
  }
}
