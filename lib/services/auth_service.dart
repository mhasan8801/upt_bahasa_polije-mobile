import 'dart:convert';

import 'package:upt_bahasa_polije/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:upt_bahasa_polije/util/app_constants.dart';

class AuthService {
  String baseUrl = AppConstants.baseUrl;

  Future<UserModel> register({
    String? name,
    String? phone,
    String? email,
    String? gender,
    String? place_of_birth,
    String? date_of_birth,
    String? last_education,
    String? address,
    String? password,
  }) async {
    var url = '$baseUrl/register';
    var headers = {
       'Content-type': 'application/json',
       'Accept': 'application/json'
     };
    var body = jsonEncode({
      'name': name,
      'phone': phone,
      'email': email,
      'gender': gender,
      'place_of_birth': place_of_birth,
      'date_of_birth': date_of_birth,
      'last_education': last_education,
      'address': address,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.access_token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    // print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.access_token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
