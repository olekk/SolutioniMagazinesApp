class Magazine {
  final String url;
  final String thumbnail;

  Magazine({this.url, this.thumbnail});

  factory Magazine.fromJSON(Map<String, dynamic> json) {
    return Magazine(
      url: json['url'],
      thumbnail: json['thumbnail']
    );
  }
}