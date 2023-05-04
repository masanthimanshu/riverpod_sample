import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/network/endpoints.dart';
import 'package:riverpod_sample/controllers/data_change_controller.dart';

class CustomBottomSheet extends ConsumerWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            debugPrint("Executed");

            ref
                .read(dataChangeProvider.notifier)
                .getData(APIEndpoints().dataOne);
          },
          child: const Text("Change Data"),
        ),
      ),
    );
  }
}
