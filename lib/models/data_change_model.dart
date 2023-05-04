import 'dart:convert';

DataChangeModel dataChangeModelFromJson(String str) =>
    DataChangeModel.fromJson(json.decode(str));

String dataChangeModelToJson(DataChangeModel data) =>
    json.encode(data.toJson());

class DataChangeModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  DataChangeModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
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
