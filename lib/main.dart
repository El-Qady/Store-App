import 'package:flutter/material.dart';
import 'package:store_app/views/add_product_view.dart';
import 'package:store_app/views/home_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AddProductView.routeName: (context) =>  AddProductView(),
        HomeView.routeName: (context) => const HomeView(),
      },
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
