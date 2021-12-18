import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://flutter.dev';

class PolicyButton extends StatelessWidget {
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: _launchURL,
      icon: const Icon(Icons.privacy_tip_rounded),
      label: const Text('Privacy Policy'),
      color: Colors.green,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    );
  }
}
