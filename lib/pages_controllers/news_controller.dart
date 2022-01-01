import 'package:get/get.dart';
import 'package:mostafa_test/http/models/api_model_services.dart';
import 'package:mostafa_test/http/models/news_model.dart';

class NewsCtrl extends GetxController{
  final String title = 'News';
  var isLoading = true.obs;
  var newsList = <NewsModel>[].obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }
  fetchNews() async{
    try{
      isLoading(true);
      var news = await ApiServices.fetchNews();
      if(news != null){
        newsList.assign(news);
      }
    } finally{
      isLoading(false);
    }
  }
}