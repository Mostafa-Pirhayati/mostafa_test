import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/http/news_model.dart';
import 'package:mostafa_test/pages_controllers/news_controller.dart';


class NewsPage extends GetView<NewsCtrl> {

  const NewsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<NewsModel>(
          future: controller.futureNews,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.description.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );

  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Fetch Data Example',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Fetch Data Example'),
  //       ),
  //       body:
  //     ),
  //   );
  // }


}
