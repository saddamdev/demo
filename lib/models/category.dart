import 'package:flutter/material.dart';
import 'item.dart';

class Category {
  final IconData icon;
  final Color iconColor;
  final String title;
  final List<Item> items;

  const Category({
    @required this.icon,
    @required this.iconColor,
    @required this.title,
    @required this.items,
  });
}
