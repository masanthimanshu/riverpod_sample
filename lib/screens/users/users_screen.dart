import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/providers/providers.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(usersProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod Sample")),
      body: response.hasValue
          ? ListView.builder(
              itemCount: response.value!.length,
              itemBuilder: (e, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Name : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].name),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "E-Mail : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].email),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Phone : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].phone),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Website : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].website),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "✨ Address ✨",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address Street : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].address.street),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address city : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].address.city),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address PinCode : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(response.value![index].address.zipcode),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
