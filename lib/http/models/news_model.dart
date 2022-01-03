// import 'dart:convert';
//
// // To parse this JSON data, do
// //
// //     final newsModel = newsModelFromJson(jsonString);
//
// import 'dart:convert';
//
// NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));
//
// String newsModelToJson(NewsModel data) => json.encode(data.toJson());
//
// class NewsModel {
//   NewsModel({
//     required this.status,
//     required this.source,
//     required this.sortBy,
//     required this.articles,
//   });
//
//   String status;
//   String source;
//   String sortBy;
//   List<Article> articles;
//
//   factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
//         status: json["status"],
//         source: json["source"],
//         sortBy: json["sortBy"],
//         articles: List<Article>.from(
//             json["articles"].map((x) => Article.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "status": status,
//         "source": source,
//         "sortBy": sortBy,
//         "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
//       };
// }
//
// class Article {
//   Article({
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.url,
//     required this.urlToImage,
//   });
//
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//
//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//         author: json["author"] == null ? null : json["author"],
//         title: json["title"],
//         description: json["description"],
//         url: json["url"],
//         urlToImage: json["urlToImage"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "author": author == null ? null : author,
//         "title": title,
//         "description": description,
//         "url": url,
//         "urlToImage": urlToImage,
//       };
// }
