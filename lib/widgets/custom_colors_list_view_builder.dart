import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/widgets/custom_colors_item.dart';

class CustomColorsListViewBuilder extends StatefulWidget {
  const CustomColorsListViewBuilder({super.key});

  @override
  State<CustomColorsListViewBuilder> createState() =>
      _CustomColorsListViewBuilderState();
}

class _CustomColorsListViewBuilderState
    extends State<CustomColorsListViewBuilder> {
  int currentIndex = 0;

  List<Color> colorsList = [
    Color(0xFFEE6352),
    Color(0xFF59CD90),
    Color(0xFF3FA7D6),
    Color(0xFFFAC05E),
    Color(0xFF006D77),
    Color(0xFF59CD90),
    Color(0xFF07004D),
    Color(0xFFEB8A90),
    Color(0xFFEF2D56),
    Color(0xFF59CD90),
    Color(0xFF14248A),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    colorsList[index];
                setState(
                  () {},
                );
              },
              child: CustomColorsItem(
                color: colorsList[index],
                isPicked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
