import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:mostafa_test/pages_controllers/news_controller.dart';

class newsListView extends StatelessWidget {
  final NewsCtrl newsCtrl = Get.put(NewsCtrl());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (newsCtrl.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
            itemCount: newsCtrl.newsList.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Row(
                    children: [
                      // Container(
                      //   width: 150,
                      //   height: 100,
                      //   margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(8),
                      //     child: Image.network(
                      //       newsCtrl.newsList[index].imageLink,
                      //       width: 150,
                      //       height: 100,
                      //       fit: BoxFit.fill,
                      //     ),
                      //   ),
                      // ),
                      Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            newsCtrl.newsList[index].status,
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            newsCtrl.newsList[index].source,
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            newsCtrl.newsList[index].sortBy,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      )),
                    ],
                  )
                ],
              );
            });
      }
    });
  }
}
