import 'package:flutter/material.dart';
import 'my_gridview/my_gridview_builder.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const MyGridViewBuilder(),
    ),
  ));
}

