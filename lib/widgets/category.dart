import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.category, required this.onTap,
  });
  final String category;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xff383838),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          category,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
