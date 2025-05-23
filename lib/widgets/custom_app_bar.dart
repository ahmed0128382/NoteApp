import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final GestureTapCallback? onTap;
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
        CustomIcon(
          onTap: onTap,
          icon: icon,
        ),
      ],
    );
  }
}
