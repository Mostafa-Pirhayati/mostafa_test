import 'package:mostafa_test/dio/news_model.dart';
import 'api_request.dart';

class NewsProvider {
  final url = 'https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=3309b7e1283f41c7b1d4b5e63c915c33';
  void getNewsList({
     Function()? beforeSend,
     Function(List<NewsModel> news)? onSuccess,
     Function(dynamic error)? onError,
  }) {
    ApiRequest(url: url, data: {}).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!((data as List).map((newsJson) => NewsModel.fromJson(newsJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}