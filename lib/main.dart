import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const Column(
        children: [
          MyApp(),
          MyButton(),
        ],
      ),
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
            boxShadow: const [BoxShadow(color: Colors.blue, blurRadius: 20.0)],
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.yellow])),
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

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      alignment: Alignment.center,
      child: const Text(
        "按钮",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
