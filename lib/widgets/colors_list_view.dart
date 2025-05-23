import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:storeapp/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
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
                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                  currentIndex = index;
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
