import 'package:flutter/material.dart';
import 'package:store_app/widgets/product_item.dart';
import 'package:store_app/widgets/search_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: Column(
        children: [
          SizedBox(height: 50),
          SearchField(),
          SizedBox(height: 20),
          ProductItem(),
        ],
      ),
    );
  }
}

