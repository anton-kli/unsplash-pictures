import 'dart:convert';

import 'package:http/http.dart';

import 'package:unsplashpic/domain/picture.dart';


// upload List<Picture> from json
Future<List<Picture>> uploadPictures() async {
  Client client = Client();
  final response = await client.get('https://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0');
  final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
  List<Picture> posts = parsed.map<Picture>((json) => Picture.fromJson(json)).toList();
  return posts;
}