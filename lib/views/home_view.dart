import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/post_add_product.dart';
import 'package:store_app/services/get_all_categories.dart';
import 'package:store_app/services/get_all_product_service.dart';
import 'package:store_app/services/get_category_service.dart';
import 'package:store_app/views/add_product_view.dart';
import 'package:store_app/views/update_product_view.dart';
import 'package:store_app/widgets/category.dart';
import 'package:store_app/widgets/product_item.dart';
import 'package:store_app/widgets/search_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'home view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  List catrogories = [];
  List<ProductModel> products = [];
  bool isLoadingCategories = true;
  bool isLoadingProducts = true;
  @override
  void initState() {
    super.initState();
    fetchCategories();
    fetchProducts();
  }

  Future<void> fetchCategories() async {
    catrogories = await GetAllCategories().getAllCategories();
    setState(() {
      isLoadingCategories = false;
    });
  }

  Future<void> fetchProducts() async {
    products = await AllProductService().getAllProducts();
    setState(() {
      isLoadingProducts = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, AddProductView.routeName);
          setState(() {
            isLoadingProducts = true;
          });
          await fetchProducts();
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.withOpacity(0.3),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              activeIcon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff1c1c1c),
      body: Column(
        children: [
          const SizedBox(height: 70),
          const SearchField(),
          const SizedBox(height: 10),
          Container(
            height: 40,
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: isLoadingCategories
                ? const Center(child: CircularProgressIndicator())
                : Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return CustomCategory(
                              onTap: () {
                                setState(() {
                                  isLoadingProducts = true;
                                });
                                GetCategoryService()
                                    .getCategoryProducts(catrogories[index])
                                    .then((value) {
                                  setState(() {
                                    products = value;
                                  });
                                  isLoadingProducts = false;
                                });
                                print(catrogories[index]);
                              },
                              category: catrogories[index],
                            );
                          },
                          itemCount: catrogories.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            isLoadingProducts
                                ? Icons.filter_alt_outlined
                                : Icons.filter_alt_off_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isLoadingProducts = true;
                            });
                            fetchProducts();
                          })
                    ],
                  ),
          ),
          // const Divider(
          //   thickness: 1,
          //   color: Colors.grey,
          // ),

          const SizedBox(height: 10),
          Expanded(
            child: isLoadingProducts
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return ProductItem(
                        onTap: () {
                          Navigator.pushNamed(
                              context, UpdateProductView.routeName,
                              arguments: products[index]);
                        },
                        product: products[index],
                      );
                    },
                    itemCount: products.length,
                  ),
          ),
        ],
      ),
    );
  }
}
