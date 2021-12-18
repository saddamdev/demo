import 'package:flutter/material.dart';
import '../constants.dart';

class ContentSubTitle extends StatelessWidget {
  const ContentSubTitle({@required this.subTitle});

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: contentMargin,
        child: Text(subTitle, style: const TextStyle(fontSize: 16.0)),
      ),
    );
  }
}
