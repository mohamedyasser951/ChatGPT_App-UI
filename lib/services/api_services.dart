import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:gpt_app/Models/models_model.dart';
import 'package:gpt_app/constants/api_constant.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<ModelsModel?> getModels() async {
    try {
      var response = await http.get(Uri.parse("$mainUrl/models"), headers: {
        "Authorization": "Bearer $apiKey",
        "Content-Type": "application/json",
      });

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        ModelsModel modelsModel = ModelsModel.fromJson(result);

        return modelsModel;
      }
      throw HttpException("Error when get Models ${response.statusCode}");
      
    } catch (error) {
      log(e);
    }
  }
}
