import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

class RatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: () => LaunchReview.launch(androidAppId: 'com.facebook.katana'),
      icon: const Icon(Icons.star_rounded),
      label: const Text('Give 5 Star'),
      color: Colors.amber,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    );
  }
}
