import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_changer.dart';

class ContentDetail extends StatelessWidget {
  const ContentDetail({@required this.contentDetail});

  final String contentDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: context.watch<ThemeChanger>().categoryBackgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(contentDetail, style: const TextStyle(fontSize: 16.0)),
    );
  }
}
