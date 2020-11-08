import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareButton extends StatefulWidget {
  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: MaterialButton(
            onPressed: () {
              Share.share('here is this link', subject: 'This is Sub');
            },
            child: Icon(Icons.share),
          ),
        ),
      ),
    );
  }
}
