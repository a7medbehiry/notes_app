import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
