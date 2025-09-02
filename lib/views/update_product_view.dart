import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_input_field.dart';
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
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductItem(
              onTap: () {},
              product: product,
            ),
            const SizedBox(height: 20),
            CustomInputField(
              labelText: 'Title',
              onSubmitted: (value) {},
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Price',
              onSubmitted: (value) {},
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Description',
              onSubmitted: (value) {},
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Category',
              onSubmitted: (value) {},
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Image URL',
              onSubmitted: (value) {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Update',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
