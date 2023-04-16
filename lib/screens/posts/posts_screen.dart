import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/providers/providers.dart';

class PostsScreen extends ConsumerWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(postsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Posts Screen")),
      body: response.hasValue
          ? ListView.builder(
              itemCount: response.value!.length,
              itemBuilder: (e, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        response.value![index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(response.value![index].body),
                    ],
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
