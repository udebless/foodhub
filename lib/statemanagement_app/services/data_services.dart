import 'dart:convert';

import 'package:foodhub/statemanagement_app/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = 'http://mark.bslmeiyu.com/api';

  Future<List<Datamodel>> getInfo() async {
    var apiUrl = '/getplaces';
    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        print(list);
        return list.map((e) => Datamodel.fromJson(e)).toList();
      } else {
        return <Datamodel>[];
      }
    } catch (e) {
      print(e);
      return <Datamodel>[];
    }
  }
}
