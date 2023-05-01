import 'dart:convert';

import 'package:gpt_app/constants/api_constant.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static getModels() async {
    var response = await http.get(Uri.parse("$mainUrl/models"), headers: {
      "Authorization": "Bearer $apiKey",
      "Content-Type": "application/json",
    });

    if (response.statusCode != 200) {
      print("Error when get Models ${response.statusCode}");
    }
    final result = jsonDecode(response.body);

    print(result);
  }

  
}
