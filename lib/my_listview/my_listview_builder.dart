import 'package:flutter/material.dart';
import 'my_listview_builder_data.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(listData[index]["image"]!),
            title: Text(listData[index]["title"]!),
            subtitle: Text(listData[index]["subtitle"]!),
          );
        });
  }
}
