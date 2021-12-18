import 'package:flutter/material.dart';
import '../models/item.dart';
import '../models/ad_helper.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    @required this.itemIcon,
    @required this.itemIconColor,
    @required this.item,
  });

  final IconData itemIcon;
  final Color itemIconColor;
  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(itemIcon, color: itemIconColor),
      title: Text(item.title),
      trailing: Icon(Icons.last_page_rounded, color: itemIconColor),
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: item);
        canShowAd();
      },
    );
  }
}
