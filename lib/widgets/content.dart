import 'package:flutter/material.dart';
import 'content_title.dart';

class Content extends StatelessWidget {
  const Content({@required this.contentList});

  final List<String> contentList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, i) {
          final _content = contentList[i];
          return ContentTitle(content: _content, contentIndex: i);
        },
        childCount: contentList.length,
      ),
    );
  }
}
