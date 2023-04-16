import 'dart:convert';

List<PostsModel> postsModelFromJson(String str) {
  return List<PostsModel>.from(
    json.decode(str).map((x) => PostsModel.fromJson(x)),
  );
}

class PostsModel {
  PostsModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
