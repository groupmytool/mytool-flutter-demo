import 'package:flutter/material.dart';

class MyExpandedDemo extends StatelessWidget {
  const MyExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 180,
                child: Image.network(
                  "https://pics6.baidu.com/feed/dc54564e9258d109beefeb98561e56b36c814d5a.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                  "https://pics6.baidu.com/feed/472309f7905298224acee09057f0e1c70b46d4af.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        // 占满父类宽度
                        width: double.infinity,
                        child: Image.network(
                          "https://pics6.baidu.com/feed/472309f7905298224acee09057f0e1c70b46d4af.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          "https://pics4.baidu.com/feed/4610b912c8fcc3ce7a16edddf4514c84d53f202e.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
