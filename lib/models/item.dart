import 'package:flutter/material.dart';

class Item {
  final String title;
  final String subTitle;
  final List<String> steps;

  const Item({
    @required this.title,
    @required this.subTitle,
    @required this.steps,
  });
}
