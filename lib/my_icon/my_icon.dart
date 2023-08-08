
import 'package:flutter/material.dart';

/// 谷歌图标库：https://fonts.google.com/icons?icon.platform=flutter
/// 阿里图标库：https://www.iconfont.cn/collections/index
class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Icon(Icons.search, color: Colors.red, size: 40,),
          SizedBox(height: 10,),
          Icon(Icons.home),
          SizedBox(height: 10,),
          Icon(Icons.category),
          SizedBox(height: 10,),
          Icon(Icons.shop),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

}
