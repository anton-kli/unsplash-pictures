import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:unsplashpic/domain/picture.dart';

import 'view/pictureScreen.dart';

// List of pictures
class GridStaggeredView extends StatelessWidget {
  List<Picture> pictures;

  GridStaggeredView({this.pictures});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 4,
      children: List.generate(
          pictures.length, (int i) {
        return PictureWidget(
          picture: pictures[i],
        );
      }),
      staggeredTiles: List.generate(pictures.length, (int index) {
        return StaggeredTile.fit(2);
      }
      ),
    );
  }
}

// Picture widget on HomeScreen
class PictureWidget extends StatelessWidget {
  final Picture picture;

  PictureWidget({Key key, this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return PictureScreen(url: picture.url);
          }));
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 3,
              clipBehavior: Clip.hardEdge,
              child: Image.network(picture.url),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 8,
              ),
              child: Text(
                picture.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                maxLines: 2,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              child: Text(
                picture.author,
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
