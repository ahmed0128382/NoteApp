import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.onchanged});
  final String title;
  final GestureTapCallback onchanged;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          onchanged: onchanged,
          icon: icon,
        ),
      ],
    );
  }
}
