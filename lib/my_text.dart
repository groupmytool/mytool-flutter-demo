
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
      child: const Text(
        "你好，我是Flutter",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed),
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
