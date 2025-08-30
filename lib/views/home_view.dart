import 'package:flutter/material.dart';
import 'package:store_app/widgets/search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: Column(
        children: [
          SizedBox(height: 50),
          SearchField(),
        ],
      ),
    );
  }
}
