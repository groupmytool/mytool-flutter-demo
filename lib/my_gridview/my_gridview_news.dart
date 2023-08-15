import 'package:flutter/material.dart';

import 'my_gridview_news_data.dart';

class MyGridViewNews extends StatelessWidget {
  const MyGridViewNews({super.key});

  List<Widget> _initGridViewData() {
    var tempList = listData.map((item) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        child: Column(
          children: [
            Image.network(item["image"]!),
            const SizedBox(
              height: 10,
            ),
            Text(
              item["title"]!,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      // 列数，即一行有几个子元素；
      crossAxisCount: 4,
      // 配置水平间距
      crossAxisSpacing: 10,
      // 配置垂直间距
      mainAxisSpacing: 10,
      // 宽高比
      childAspectRatio: 1.0,
      children: _initGridViewData(),
    );
  }
}
