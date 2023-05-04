import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/network/endpoints.dart';
import 'package:riverpod_sample/controllers/data_change_controller.dart';
import 'package:riverpod_sample/screens/data_change/custom_bottom_sheet.dart';

class DataChange extends ConsumerStatefulWidget {
  const DataChange({Key? key}) : super(key: key);

  @override
  ConsumerState<DataChange> createState() => _DataChangeState();
}

class _DataChangeState extends ConsumerState<DataChange> {
  @override
  void initState() {
    super.initState();
    ref.read(dataChangeProvider.notifier).getData(APIEndpoints().dataOne);
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(dataChangeProvider);
    final id = ref.watch(dataChangeProvider.select((value) => value.id));

    return Scaffold(
      appBar: AppBar(title: const Text("Data Change")),
      body: id != null
          ? Column(
              children: [
                const SizedBox(
                  height: 25,
                  width: double.infinity,
                ),
                Text(response.id.toString()),
                const SizedBox(height: 10),
                Text(response.title ?? ""),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const SingleChildScrollView(
                          child: CustomBottomSheet(),
                        );
                      },
                    );
                  },
                  child: const Text("Show Bottom Sheet"),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
