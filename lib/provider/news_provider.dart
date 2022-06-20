import 'package:flutter/material.dart';
import 'package:upt_bahasa_polije/models/news_model.dart';
import 'package:upt_bahasa_polije/services/news_service.dart';

class NewsProvider with ChangeNotifier {
  List<NewsModel> _news = [];

  List<NewsModel> get news => _news;

  set news(List<NewsModel> news) {
    _news = news;
    notifyListeners();
  }

  Future<void> getNews() async {
    try {
      List<NewsModel> news = await NewsService().getNews();
      _news = news;
    } catch (e) {
      print(e);
    }
  }
}
