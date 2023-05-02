import 'package:flutter/material.dart';
import 'package:gpt_app/Models/models_model.dart';
import 'package:gpt_app/services/api_services.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "text-davinci-003";

  changeModel({required String model}) {
    currentModel = model;
    notifyListeners();
  }

  String get getCurrentModel => currentModel;

  List<Data> modelList = [];

  Future<List<Data>?> getAllModels() async {
    ModelsModel? model = await ApiServices.getModels();

    return model!.data;
  }

  List<Data> get getModelList => modelList;
}
