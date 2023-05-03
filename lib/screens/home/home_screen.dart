import 'package:flutter/material.dart';
import 'package:riverpod_sample/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod Sample")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const InputField(),
                ),
              );
            },
            child: const Text("Input Field"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PostsScreen(),
                ),
              );
            },
            child: const Text("Posts Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UsersScreen(),
                ),
              );
            },
            child: const Text("Users Page"),
          ),
        ],
      ),
    );
  }
}
