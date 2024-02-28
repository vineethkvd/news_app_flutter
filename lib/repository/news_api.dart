import 'dart:convert';
import '../model/news_model.dart';
import 'package:http/http.dart' as http;

import 'abstract_class_ropository.dart';

class NewsApi extends ClassRepository {
  var keyApi = "6842c385dc5e467eac91d810f147b54a";

  @override
  Future<List<Articles>> getAllNews() async {
    try {
      var url =
          ("https://newsapi.org/v2/top-headlines?country=us&apiKey=$keyApi");
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data)['articles'];
        final List<Articles> articleList = (jsonData as List)
            .map((json) => Articles.fromJson(json as Map<String, dynamic>))
            .toList();
        return articleList;
      } else {
        print("status code#Amer# = ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
    throw Exception("here Amer Exception code status");
  }

  @override
  Future<List<Articles>> getCategory(String category) async {
    try {
      var url =
          ("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$keyApi");
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data)['articles'];
        final List<Articles> articleList = (jsonData as List)
            .map((json) => Articles.fromJson(json as Map<String, dynamic>))
            .toList();
        return articleList;
      } else {
        print("status code#Amer# = ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
    throw Exception("here Amer Exception code status");
  }
}
