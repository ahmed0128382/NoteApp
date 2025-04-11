import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.icon, required this.onchanged});
  final GestureTapCallback? onchanged;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onchanged,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: 0.1),
        ),
        child: Center(
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
