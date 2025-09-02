import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key, required this.labelText, required this.onSubmitted});
  final String labelText;
  final Function(String value) onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 14.0,
        left: 10.0,
      ), // Add padding to the TextField(8.0),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        onChanged: onSubmitted,
        decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xff383838),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white54),
        ),
      ),
    );
  }
}
