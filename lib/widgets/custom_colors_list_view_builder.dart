import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_colors_item.dart';

class CustomColorsListViewBuilder extends StatelessWidget {
  const CustomColorsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomColorsItem();
        },
      ),
    );
  }
}
