import 'package:riverpod_sample/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/models/users_model.dart';

final getUsersDataProvider = FutureProvider.family((ref, String url) {
  return UsersController().getData(url);
});

class UsersController {
  Future<List<UsersModel>?> getData(String url) async {
    final data = await GetRequest().getJsonData(url);

    if (data != null) return usersModelFromJson(data);
    return null;
  }
}
