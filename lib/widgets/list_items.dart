import 'package:flutter/material.dart';
import '../models/category.dart';
import 'list_item.dart';

class ListItems extends StatelessWidget {
  const ListItems({@required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: category.items.length,
        itemBuilder: (_, i) {
          final _item = category.items[i];
          return ListItem(
            itemIcon: category.icon,
            itemIconColor: category.iconColor,
            item: _item,
          );
        },
      ),
    );
  }
}
