import 'package:flutter/material.dart';

class MyGridViewCountDetail extends StatelessWidget {
  const MyGridViewCountDetail({super.key});

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 12; i++) {
      tempList.add(
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Colors.blue),
          child: Text(
            "第$i个元素",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      );
    }
    return tempList;
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
      childAspectRatio: 0.7,
      children: _initGridViewData(),
    );
  }
}
