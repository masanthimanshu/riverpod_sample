import 'package:riverpod_sample/network/requests.dart';
import 'package:riverpod_sample/models/users_model.dart';
import 'package:riverpod_sample/network/endpoints.dart' as endpoints;

class UsersController {
  Future<List<UsersModel>?> getData() async {
    final data = await GetRequest().getJsonData(endpoints.getUsers);

    if (data != null) return usersModelFromJson(data);
    return null;
  }
}
