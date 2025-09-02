import 'package:flutter/material.dart';
import 'package:store_app/views/add_product_view.dart';
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AddProductView.routeName: (context) =>  AddProductView(),
        HomeView.routeName: (context) => const HomeView(),
        UpdateProductView.routeName: (context) => const UpdateProductView(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
