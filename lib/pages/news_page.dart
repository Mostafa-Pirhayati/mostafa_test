import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/binding/dashboard_binding.dart';
import 'package:mostafa_test/dio/loading_overlay.dart';
import 'package:mostafa_test/dio/news_controller.dart';
import 'package:mostafa_test/dio/news_list_item.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body:
      Container(
        child: GetBuilder<NewsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.newsList.length,
                itemBuilder: (context, index) => NewsListItem(
                  news: controller.newsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}
