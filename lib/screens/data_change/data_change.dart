import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/controllers/data_change_controller.dart';
import 'package:riverpod_sample/screens/data_change/custom_bottom_sheet.dart';

class DataChange extends ConsumerWidget {
  const DataChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(dataChangeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Data Change")),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
            width: double.infinity,
          ),
          Text(response.userId.toString()),
          const SizedBox(height: 10),
          Text(response.title ?? ""),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) => const SingleChildScrollView(
                  child: CustomBottomSheet(),
                ),
              );
            },
            child: const Text("Show Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}
