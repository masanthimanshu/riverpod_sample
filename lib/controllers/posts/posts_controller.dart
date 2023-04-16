import 'package:riverpod_sample/network/requests.dart';
import 'package:riverpod_sample/models/posts_model.dart';
import 'package:riverpod_sample/network/endpoints.dart' as endpoints;

class PostsController {
  Future<List<PostsModel>?> getData() async {
    final data = await GetRequest().getJsonData(endpoints.getPosts);

    if (data != null) return postsModelFromJson(data);
    return null;
  }
}
