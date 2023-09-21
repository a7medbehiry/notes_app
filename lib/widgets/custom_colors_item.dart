import 'package:flutter/material.dart';

class CustomColorsItem extends StatelessWidget {
  final Color color;
  final bool isPicked;
  const CustomColorsItem(
      {super.key, required this.isPicked, required this.color});

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}
