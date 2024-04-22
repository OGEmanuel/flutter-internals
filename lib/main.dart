import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/keys.dart';

// import 'package:flutter_internals/ui_updates_demo.dart';

void main() {
  final numbers = [1, 2, 3];
  // numbers = [4, 5, 6]; you can't reassign another value to a final variable but you can do this (overwrite) with a var variable. With const, you also can't reassign, however, you can't modify the variable.
  numbers.add(4);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys(),
      ),
    );
  }
}
