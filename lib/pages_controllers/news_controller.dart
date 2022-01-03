import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/http/news_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class NewsCtrl extends GetxController{

  late Future<NewsModel> futureNews;

  @override
  Future<void> onInit() async {

    futureNews = fetchNews();
  }

  Future<NewsModel> fetchNews() async {
    final response = await http
        .get(Uri.parse('https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=3309b7e1283f41c7b1d4b5e63c915c33'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return NewsModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load news');
    }
  }


}