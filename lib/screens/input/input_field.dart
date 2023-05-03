import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/controllers/input_controller.dart';

class InputField extends ConsumerStatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  ConsumerState<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends ConsumerState<InputField> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";

  _handleSubmit(WidgetRef ref) {
    ref.read(inputDataProvider.notifier).update((state) => _email);
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(inputDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Input Screen")),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person_outlined),
                      border: UnderlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter Your Email",
                    ),
                    onChanged: (text) => _email = text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your E-Mail";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _handleSubmit(ref);
                    }
                  },
                  child: const Text("Update"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Text(response ?? ""),
        ],
      ),
    );
  }
}
