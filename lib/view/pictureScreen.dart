
import 'package:flutter/material.dart';

class PictureScreen extends StatelessWidget {
  PictureScreen({this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.network(url),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
