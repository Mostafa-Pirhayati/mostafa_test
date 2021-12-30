import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/pages_controllers/news_controller.dart';

class NewsPage extends GetView<NewsCtrl> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text(
            "News Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}