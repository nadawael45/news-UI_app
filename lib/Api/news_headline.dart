import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:newsapp/models/newsApi.dart';

class HeadLines {
  String _HeadlineApi =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=71b4281063944f159f9724e373d8f069";

  Future<List<newsApi>> fetchAllHeadlines() async {
    List<newsApi> news = List<newsApi>();
    var response = await http.get(_HeadlineApi);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData["articles"];

      for (var item in data) {
        newsApi nn = newsApi(item['author'], item['title'], item['description'],
            item['url'], item['urlToImage']);
        news.add(nn);
      }
      for (newsApi nn in news) {
        print(nn.title);
      }
    }

    return news;
  }
}
