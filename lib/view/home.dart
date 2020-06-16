import 'package:flutter/material.dart';
import 'package:unsplashpic/domain/picture.dart';
import 'package:unsplashpic/service/jsonHandler.dart';
import 'package:unsplashpic/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('pic'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Picture>>(
        future: uploadPictures(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? GridStaggeredView(pictures: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
