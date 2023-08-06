import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const Center(
        child: Text(
          "你好 Body",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
      ),
    ),
  ));
}
