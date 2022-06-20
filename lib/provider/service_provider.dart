import 'package:flutter/material.dart';
import 'package:upt_bahasa_polije/models/service_model.dart';
import 'package:upt_bahasa_polije/services/service_service.dart';

class ServiceProvider with ChangeNotifier {
  List<ServiceModel> _service = [];

  List<ServiceModel> get service => _service;

  set service(List<ServiceModel> service) {
    _service =service;
    notifyListeners();
  }

  Future<void> getService() async {
    try {
      List<ServiceModel> service = await ServiceService().getService();
      _service = service;
    } catch (e) {
      print(e);
    }
  }
}
