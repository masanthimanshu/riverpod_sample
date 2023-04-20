import 'package:riverpod_sample/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/models/posts_model.dart';

final getPostsDataProvider = FutureProvider.family((ref, String url) {
  return PostsController().getData(url);
});

class PostsController {
  Future<List<PostsModel>?> getData(String url) async {
    final data = await GetRequest().getJsonData(url);

    if (data != null) return postsModelFromJson(data);
    return null;
  }
}
