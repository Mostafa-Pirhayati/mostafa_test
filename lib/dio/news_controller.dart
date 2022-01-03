import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mostafa_test/dio/news_model.dart';
import 'package:mostafa_test/dio/news_provider.dart';

class NewsController extends GetxController {
  List<NewsModel> newsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    NewsProvider().getNewsList(
      onSuccess: (news) {
        newsList.addAll(news);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },

    );
    super.onInit();
  }
}