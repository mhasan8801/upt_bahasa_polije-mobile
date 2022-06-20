import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:upt_bahasa_polije/models/news_model.dart';
import 'package:upt_bahasa_polije/util/app_constants.dart';

class NewsService {
  String baseUrl = AppConstants.baseUrl;

  Future<List<NewsModel>> getNews() async {
    var url = '$baseUrl/news';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<NewsModel> news = [];

      for (var item in data) {
        news.add(NewsModel.fromJson(item));
      }

      return news;
    } else {
      throw Exception('Gagal Get News!!!');
    }
  }
}
