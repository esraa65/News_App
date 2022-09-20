import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/model/articlesmodel.dart';

class Api {
  static String ApiKey = '6387742a5a1b446d84b4913f4b42d056';
  static fetchNews() async {
    List<ArticlesModel> listarticales = [];
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$ApiKey');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["articles"];
    for (var i in responsebody) {

      ArticlesModel x = ArticlesModel(
          title: '${i['title']}',
          description: '${i['description']}',
          Url: '${i['url']}',
          UrlToImage: '${i['urlToImage']}');
      listarticales.add(x);
      print(listarticales);
    }
    return listarticales;
  }
}





/*import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/newsdata.dart';

class APIData {
  static String APIKey = "eedbcce7b83d4bbc9407c018e1164154";

  static getnews() async {
    List<NewsData> newsdata = [];
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=$APIKey");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body)["articles"];

    for (var x in responseBody) {
      newsdata.add(NewsData(
        title: x["title"],
        description: x["description"],
        url: x["url"],
        urlToImage: x["urlToImage"],
        author: x["author"],
        content: x["content"],
      ));
    }
    return newsdata;
  }

  static getCategorynews(String category) async {
    List<NewsData> newsdata = [];
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$APIKey");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body)["articles"];

    for (var x in responseBody) {
      newsdata.add(NewsData(
        title: x["title"],
        description: x["description"],
        url: x["url"],
        urlToImage: x["urlToImage"],
        author: x["author"],
        content: x["content"],
      ));
    }
    return newsdata;
  } */