import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(
            Icons.search,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
