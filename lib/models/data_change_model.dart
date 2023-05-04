import 'dart:convert';

DataChangeModel dataChangeModelFromJson(String str) =>
    DataChangeModel.fromJson(json.decode(str));

String dataChangeModelToJson(DataChangeModel data) =>
    json.encode(data.toJson());

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

  factory DataChangeModel.fromJson(Map<String, dynamic> json) =>
      DataChangeModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
