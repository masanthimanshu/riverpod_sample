import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/network/endpoints.dart';
import 'package:riverpod_sample/controllers/data_change_controller.dart';

class DataChange extends ConsumerWidget {
  const DataChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.read(dataChangeProvider(APIEndpoints().dataOne));

    return Scaffold(
      appBar: AppBar(title: const Text("Data Change")),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
            width: double.infinity,
          ),
          Text(response.toString()),
          const SizedBox(height: 10),
          const Text("Id Goes Here"),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Show Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}
