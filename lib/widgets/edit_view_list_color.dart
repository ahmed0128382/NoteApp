import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/note_model.dart';
import 'color_item.dart';

class EditViewListColor extends StatefulWidget {
  const EditViewListColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditViewListColor> createState() => _EditViewListColorState();
}

class _EditViewListColorState extends State<EditViewListColor> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(widget.note.color);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12.0), // Add horizontal padding
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index];
                  setState(() {});
                },
                child: ColorItem(
                    color: kColors[index], isActive: currentIndex == index),
              ),
            );
          }),
    );
  }
}
