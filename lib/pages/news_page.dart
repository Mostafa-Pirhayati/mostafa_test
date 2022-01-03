import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/http/news_view.dart';
import 'package:mostafa_test/pages_controllers/news_controller.dart';

class NewsPage extends GetView<NewsCtrl> {
  const NewsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        backgroundColor: controller.color,
        centerTitle: true,
      ),
      body:
        const NewsView(),

    );

  }
}

