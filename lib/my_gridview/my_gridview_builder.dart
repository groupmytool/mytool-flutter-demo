import 'package:flutter/material.dart';

import 'my_gridview_news_data.dart';

class MyGridViewBuilder extends StatelessWidget {
  const MyGridViewBuilder({super.key});

  Widget _initGridViewData(context, index) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Image.network(listData[index]["image"]!),
          const SizedBox(
            height: 10,
          ),
          Text(
            listData[index]["title"]!,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // 列数，即一行有几个子元素；
        crossAxisCount: 4,
        // 配置水平间距
        crossAxisSpacing: 10,
        // 配置垂直间距
        mainAxisSpacing: 10,
        // 宽高比
        childAspectRatio: 1.0,
      ),
      itemCount: listData.length,
      // 调用 _initGridViewData 不需要加括号
      itemBuilder: _initGridViewData,
    );
  }
}
