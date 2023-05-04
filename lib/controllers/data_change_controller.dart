import 'package:riverpod_sample/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/models/data_change_model.dart';

final dataChangeProvider =
    StateNotifierProvider<DataChangeController, DataChangeModel>(
        (ref) => DataChangeController());

class DataChangeController extends StateNotifier<DataChangeModel> {
  DataChangeController()
      : super(DataChangeModel(
          id: 0,
          userId: 0,
          title: "",
          completed: false,
        ));

  Future<DataChangeModel?> getData(String url) async {
    final data = await GetRequest().getJsonData(url);

    if (data != null) {
      final apiResponse = dataChangeModelFromJson(data);
      state = DataChangeModel(
        id: apiResponse.id,
        title: apiResponse.title,
        userId: apiResponse.userId,
        completed: apiResponse.completed,
      );
    }

    return null;
  }
}
