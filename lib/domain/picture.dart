class Picture {
  String name;
  String author;
  String url;

  Picture({this.name, this.author, this.url});

  // convert from json object to Picture object
  factory Picture.fromJson(Map<String, dynamic> json) {
    String name = 'No name';
    if ((json['description'] as String) != null) {
      name = json['description'] as String;
    } else if (json['alt_description'] as String != null) {
      name = json['alt_description'] as String;
    }
    return Picture(
      name: name,
      author: json['user']['name'] as String,
      url: json['urls']['regular'] as String,
    );
  }
}