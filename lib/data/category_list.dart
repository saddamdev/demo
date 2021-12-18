import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/category.dart';
import 'item_list.dart';

const categoryList = const [
  Category(
    icon: FontAwesomeIcons.facebook,
    iconColor: Color(0xFF448AFF),
    title: 'Facebook',
    items: fbList,
  ),
  Category(
    icon: FontAwesomeIcons.facebookMessenger,
    iconColor: Color(0xFF40C4FF),
    title: 'Messenger',
    items: msList,
  ),
];
