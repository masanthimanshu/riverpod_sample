import 'users_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getUsersDataProvider = Provider((ref) => UsersController().getData());