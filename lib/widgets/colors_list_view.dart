import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final int color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: Color(color),
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: Color(color),
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<int> colors = [
    0xffef7c8e,
    0xfffae8e0,
    0xffb6e2d3,
    0xffd8a7b1,
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12.0), // Add horizontal padding
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                    color: colors[index], isActive: currentIndex == index),
              ),
            );
          }),
    );
  }
}
