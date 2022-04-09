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
        screen: const CardScreen()),
    ItemMenu(
        label: 'Alert Screen',
        route: 'alert',
        icon: Icons.warning,
        screen: const AlertScreen()),
    ItemMenu(
        label: 'Inputs Screen',
        route: 'input',
        icon: Icons.input,
        screen: const InputsScreen()),
    ItemMenu(
        label: 'ListView Separated',
        route: 'lvseparated',
        icon: Icons.list_outlined,
        screen: const ListViewSeparatedScreen()),
    ItemMenu(
        label: 'More Inputs Screen',
        route: 'oinput',
        icon: Icons.input_sharp,
        screen: const OtherInputsScreen()),
    ItemMenu(
        label: 'Text Screen',
        route: 'text',
        icon: Icons.text_fields,
        screen: const TextScreen()),
    ItemMenu(
        label: 'Container Screen',
        route: 'container',
        icon: Icons.markunread,
        screen: const ContainerScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (var item in menuOptions) {
      routes.addAll({item.route: (context) => item.screen});
    }

    return routes;
  }
}
