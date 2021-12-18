import 'package:flutter/material.dart';
import '../models/category.dart';
import '../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({@required this.item});

  final Category item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(item.icon, color: item.iconColor, size: 60.0),
        const SizedBox(height: 15.0),
        Text(item.title, style: k20bold),
      ],
    );
  }
}
