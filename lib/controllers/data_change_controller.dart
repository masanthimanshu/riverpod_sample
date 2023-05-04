import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/network/requests.dart';
import 'package:riverpod_sample/models/data_change_model.dart';

final dataChangeProvider = StateProvider.family(
  (ref, String url) => DataChangeController().getData(url),
);

class DataChangeController {
  Future<DataChangeModel?> getData(String url) async {
    final data = await GetRequest().getJsonData(url);

    if (data != null) return dataChangeModelFromJson(data);
    return null;
  }
}
