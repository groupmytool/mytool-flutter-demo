import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("这是一个列表"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text("全部订单"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("代付款"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("在线客服"),
            trailing: Icon(Icons.chevron_right_sharp),
          ),
        ],
      ),
    );
  }
}
