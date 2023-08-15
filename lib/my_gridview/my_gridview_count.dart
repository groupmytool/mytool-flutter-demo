import 'package:flutter/material.dart';

class MyGridViewCount extends StatelessWidget {
  const MyGridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 列数，即一行有几个子元素；
      crossAxisCount: 4,
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }
}
