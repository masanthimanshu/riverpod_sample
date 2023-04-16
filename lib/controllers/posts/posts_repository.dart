import 'posts_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getPostsDataProvider = Provider((ref) => PostsController().getData());