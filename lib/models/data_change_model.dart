import 'dart:convert';

DataChangeModel dataChangeModelFromJson(String str) {
  return DataChangeModel.fromJson(json.decode(str));
}

class DataChangeModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  DataChangeModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory DataChangeModel.fromJson(Map<String, dynamic> json) {
    return DataChangeModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      completed: json["completed"],
    );
  }
}
