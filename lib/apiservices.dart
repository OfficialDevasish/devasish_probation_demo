import 'dart:developer';

import 'package:devasish_probation_demo/constants/apiconstants.dart';
import 'package:devasish_probation_demo/views/apihomepage.dart';
import 'package:http/http.dart' as http;


class ApiService {
  Future<List<Productmodel>?> getUsers() async {
    try {
      var url = Uri.parse(apiconstants.baseUrl + apiconstants.usersEndpoint);
      var response = await http.get(url);
      print('Response--->$response');
      if (response.statusCode == 200) {
        // Productmodel _model = Productmodel.fromJson(json);
        // return _model;
      }

    } catch (e) {
      log(e.toString());
    }
  }
}