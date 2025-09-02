import 'package:flutter/material.dart';
import 'package:store_app/services/post_add_product.dart';
import 'package:store_app/widgets/custom_input_field.dart';

class AddProductView extends StatelessWidget {
  AddProductView({super.key});
  static const String routeName = 'add product';
  String? title, description, category, image, price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        backgroundColor: const Color(0xff1c1c1c),
        centerTitle: true,
        elevation: 0,
        title: const Text('Add Product', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const Spacer(),
          CustomInputField(
            labelText: 'Title',
            onSubmitted: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 10),
          CustomInputField(
              labelText: 'Price',
              onSubmitted: (value) {
                price = value;
              }),
          const SizedBox(height: 10),
          CustomInputField(
              labelText: 'Description',
              onSubmitted: (value) {
                description = value;
              }),
          const SizedBox(height: 10),
          CustomInputField(
              labelText: 'Category',
              onSubmitted: (value) {
                category = value;
              }),
          const SizedBox(height: 10),
          CustomInputField(
              labelText: 'Image URL',
              onSubmitted: (value) {
                image = value;
              }),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              AddProductService().addProduct(
                  title: title!,
                  description: description!,
                  price: price!,
                  category: category!,
                  image: image!);
              Navigator.pop(context);
            },
            child: const Text('Add Product'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
