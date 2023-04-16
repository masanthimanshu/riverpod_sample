import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/controllers/controller.dart';

final postsProvider = FutureProvider((ref) {
  return ref.read(getPostsDataProvider);
});

final usersProvider = FutureProvider((ref) {
  return ref.read(getUsersDataProvider);
});
