class NewsModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;

  // DateTime publishedAt;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    // required this.publishedAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        author: json["author"] == null ? null : json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        // publishedAt: null,
        // publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    // "author": author == null ? null : author,
    // "title": title,
    // "description": description,
    // "url": url,
    // "urlToImage": urlToImage,
    // "publishedAt": publishedAt == null ? null : publishedAt.toIso8601String(),
    return data;
  }
}
