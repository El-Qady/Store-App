import 'package:flutter/material.dart';
import 'package:store_app/widgets/product_item.dart';
import 'package:store_app/widgets/search_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      body: Column(
        children: [
          const SizedBox(height: 70),
          const SearchField(),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return const ProductItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
