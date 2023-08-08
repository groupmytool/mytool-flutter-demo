import 'package:flutter/material.dart';

import '../my_icon/my_icon_ali_fonts.dart';

/// 谷歌图标库：https://fonts.google.com/icons?icon.platform=flutter
/// 阿里图标库：https://www.iconfont.cn/collections/index
class MyAliIcon extends StatelessWidget {
  const MyAliIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(
            AliFont.diannao,
            size: 40,
            color: Colors.green,
          ),
          SizedBox(
            height: 10,
          ),
          Icon(
            AliFont.bianji,
            size: 40,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Icon(
            AliFont.gouwu,
            size: 40,
            color: Colors.red,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
