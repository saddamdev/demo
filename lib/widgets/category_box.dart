import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_changer.dart';
import '../models/category.dart';
import 'category_item.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({@required this.categoryItem});

  final Category categoryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/list', arguments: categoryItem),
      child: Container(
        child: CategoryItem(item: categoryItem),
        decoration: BoxDecoration(
          color: context.watch<ThemeChanger>().categoryBackgroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
