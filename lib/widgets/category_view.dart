import 'package:flutter/material.dart';
import '../data/category_list.dart';
import 'category_box.dart';

class CategoryView extends StatelessWidget {
  final categories = categoryList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: categories.length,
        itemBuilder: (_, i) {
          final _category = categories[i];
          return CategoryBox(categoryItem: _category);
        },
      ),
    );
  }
}
