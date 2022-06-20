import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:upt_bahasa_polije/models/service_model.dart';
import 'package:upt_bahasa_polije/util/app_constants.dart';

class ServiceService {
  String baseUrl = AppConstants.baseUrl;

  Future<List<ServiceModel>> getService() async {
    var url = '$baseUrl/service';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ServiceModel> service = [];

      for (var item in data) {
        service.add(ServiceModel.fromJson(item));
      }

      return service;
    } else {
      throw Exception('Gagal Get Service!!!');
    }
  }
}
