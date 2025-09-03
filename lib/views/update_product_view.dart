import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/put_update_product.dart';
import 'package:store_app/widgets/custom_input_field.dart';
import 'package:store_app/widgets/product_item.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key});
  static const String routeName = 'update product';
  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? title, description, price, category, image, id;
  late ProductModel product;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // استقبل المنتج مرة واحدة فقط عند فتح الصفحة
    product = ModalRoute.of(context)!.settings.arguments as ProductModel;
  }

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
              onSubmitted: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Price',
              onSubmitted: (value) {
                price = value;
              },
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Description',
              onSubmitted: (value) {
                description = value;
              },
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Category',
              onSubmitted: (value) {
                category = value;
              },
            ),
            const SizedBox(height: 10),
            CustomInputField(
              labelText: 'Image URL',
              onSubmitted: (value) {
                image = value;
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () async {
                ProductModel updatedProduct = await UpdateProductService()
                    .updateProduct(
                        title: title ?? product.title,
                        description: description ?? product.description,
                        price: price ?? product.price.toString(),
                        category: category ?? product.category,
                        image: image ?? product.image,
                        id: product.id.toString());
                setState(() {
                  product = updatedProduct;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Product Saved successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                ProductModel updatedProduct = await UpdateProductService()
                    .updateProduct(
                        title: title ?? product.title,
                        description: description ?? product.description,
                        price: price ?? product.price.toString(),
                        category: product.category,
                        image: image ?? product.image,
                        id: product.id.toString());
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Product updated successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.pop(context);
              },
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
