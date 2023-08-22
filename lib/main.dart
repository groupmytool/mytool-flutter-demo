import 'package:flutter/material.dart';

import 'my_row_column_expanded/my_expanded_demo.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const MyExpandedDemo(),
    ),
  ));
}

