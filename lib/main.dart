import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.blue, blurRadius: 20.0)
            ],
          gradient: const LinearGradient(
            colors: [
              Colors.red,Colors.yellow
            ]
          )
        ),
        alignment: Alignment.center,
        child: const Text(
          "你好 Body",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
