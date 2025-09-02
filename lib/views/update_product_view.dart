import 'package:flutter/material.dart';
import 'package:store_app/widgets/product_item.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key});
  static const String routeName = 'update product';
  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        backgroundColor: const Color(0xff1c1c1c),
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
