import 'package:flutter/material.dart';

class ItemMenu {
  final String label;
  final String route;
  final IconData icon;
  final Widget screen;

  ItemMenu(
      {required this.label,
      required this.route,
      required this.icon,
      required this.screen});
}
