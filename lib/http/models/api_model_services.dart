// import 'package:http/http.dart' as http;
// import 'news_model.dart';
// import 'package:mostafa_test/pages_controllers/news_controller.dart';
//
// class ApiServices {
//   static var client = http.Client();
//
//   static Future fetchNews() async {
//
//     var url = Uri.https('https://newsapi.org/', 'v1/articles?source=cnn&sortBy=top&apiKey=3309b7e1283f41c7b1d4b5e63c915c33');
//     var response = await client.get(url);
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       return newsModelFromJson(jsonString);
//     }
//   }
// }
