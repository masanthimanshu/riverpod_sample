import 'package:riverpod_sample/network/requests.dart';
import 'package:riverpod_sample/network/endpoints.dart';
import 'package:riverpod_sample/models/posts_model.dart';

class PostsController {
  Future<List<PostsModel>?> getData() async {
    final data = await GetRequest().getJsonData(APIEndpoints().getPosts);

    if (data != null) return postsModelFromJson(data);
    return null;
  }
}
