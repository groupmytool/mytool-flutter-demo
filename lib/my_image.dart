
import 'package:flutter/material.dart';

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
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: Image.network(
          "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
