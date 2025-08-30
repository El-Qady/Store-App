import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: 14.0,
              left: 10.0,
            ), // Add padding to the TextField(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.white54),
                fillColor: Color(0xff383838),
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.shopping_cart, color: Colors.white54, size: 28),
        ),
      ],
    );
  }
}
