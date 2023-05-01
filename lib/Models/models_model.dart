class ModelsModel {
  List<Data>? data;

  ModelsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  String? id;
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}
