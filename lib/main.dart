import 'package:flutter/material.dart';

import 'my_stateful/my_stateful.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const MyStateful(),
    ),
  ));
}
