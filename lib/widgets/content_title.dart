import 'package:flutter/material.dart';
import '../constants.dart';
import 'content_detail.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({@required this.content, @required this.contentIndex});

  final String content;
  final int contentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: contentMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Step ${contentIndex + 1}', style: k20bold),
          const SizedBox(height: 10.0),
          ContentDetail(contentDetail: content),
        ],
      ),
    );
  }
}
