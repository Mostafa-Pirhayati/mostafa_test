import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'news_model.dart';

class NewsView extends StatefulWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {

  late Future<Articles> futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Articles>(
        future: futureNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children:[ Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(snapshot.data!.urlToImage??'',height: 90,width: 90,),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(snapshot.data!.title??'',style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18))),
                      ),
                      subtitle: Center(child: Text(snapshot.data!.description??'',style: const TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold,fontSize: 15))),
                    ),
                  ),
                ),
              ),]
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

Future<Articles> fetchNews() async {
  final response = await http
      .get(Uri.parse('https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=3309b7e1283f41c7b1d4b5e63c915c33'),
      headers: {HttpHeaders.authorizationHeader: 'title',});

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return Articles.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }

}

