import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_colors_item.dart';

class EditNoteColorsListViewBuilder extends StatefulWidget {
  final NoteModel note;
  const EditNoteColorsListViewBuilder({super.key, required this.note});

  @override
  State<EditNoteColorsListViewBuilder> createState() =>
      _EditNoteColorsListViewBuilderState();
}

class _EditNoteColorsListViewBuilderState
    extends State<EditNoteColorsListViewBuilder> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColorsList.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColorsList[index].value;
                setState(
                  () {},
                );
              },
              child: CustomColorsItem(
                color: kColorsList[index],
                isPicked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
