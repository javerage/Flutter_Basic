import 'package:flutter/material.dart';
import 'package:haberdashery/models/item_menu.dart';
import 'package:haberdashery/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static const String errorRoute = 'home';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
        label: 'home screen',
        route: 'home',
        icon: Icons.house,
        screen: const HomeScreen()),
    ItemMenu(
        label: 'Alert Screen',
        route: 'alert',
        icon: Icons.warning,
        screen: const AlertsScreen()),
    ItemMenu(
        label: 'Basic List Screen',
        route: 'basiclv',
        icon: Icons.list,
        screen: const BasicListviewScreen()),
    ItemMenu(
        label: 'Buttons Screen',
        route: 'buttons',
        icon: Icons.fingerprint,
        screen: const ButtonsScreen()),
    ItemMenu(
        label: 'Card Screen',
        route: 'card',
        icon: Icons.pages,
        screen: const CardsScreen()),
    ItemMenu(
        label: 'Fields Screen',
        route: 'fields',
        icon: Icons.text_fields,
        screen: const FieldsScreen()),
    ItemMenu(
        label: 'Separated List Screen',
        route: 'separatedlv',
        icon: Icons.list_sharp,
        screen: const SeparatedListviewScreen())
  ];

  static final countMenuOptions = menuOptions.length;

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }

    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
