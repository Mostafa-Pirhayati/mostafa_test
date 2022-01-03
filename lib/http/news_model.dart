class NewsModel {
  NewsModel({
    required this.status,
    required this.source,
    required this.sortBy,
    required this.articles,
  });
  late final String status;
  late final String source;
  late final String sortBy;
  late final List<Articles> articles;

  NewsModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    source = json['source'];
    sortBy = json['sortBy'];
    articles = List.from(json['articles']).map((e)=>Articles.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['source'] = source;
    _data['sortBy'] = sortBy;
    _data['articles'] = articles.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Articles {
  Articles({
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    this.publishedAt,
  });
  late final String? author;
  late final String? title;
  late final String? description;
  late final String? url;
  late final String? urlToImage;
  late final String? publishedAt;

  Articles.fromJson(Map<String, dynamic> json){
    author = null;
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['author'] = author;
    _data['title'] = title;
    _data['description'] = description;
    _data['url'] = url;
    _data['urlToImage'] = urlToImage;
    _data['publishedAt'] = publishedAt;
    return _data;
  }

}
