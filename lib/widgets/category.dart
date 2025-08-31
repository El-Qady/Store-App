import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.category,
  });
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
