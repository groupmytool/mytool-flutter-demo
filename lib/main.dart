import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好 AppBar")),
      body: const Column(
        children: [
          // MyApp(),
          // MyButton(),
          // MyText(),
          MyImage(),
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
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        transform: Matrix4.rotationZ(0.2),
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
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: const Text(
        "按钮",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

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

/// 由于macOS平台的沙箱机制，需要在 DebugProfile.entitlements 和 Release.entitlements 中配置：
/// 	<key>com.apple.security.network.client</key>
///   <true/>
/// 参考：
/// [How to fix "SocketException: Connection failed with Flutter on macOS](https://codewithandrea.com/tips/socket-exception-connection-failed-macos/)
/// [SocketException: Connection failed with flutter app on macOS](https://stackoverflow.com/questions/65458903/socketexception-connection-failed-os-error-operation-not-permitted-errno-1)
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: const BoxDecoration(color: Colors.red,),
        child: Image.network(
          "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
