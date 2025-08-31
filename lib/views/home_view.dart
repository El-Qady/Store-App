import 'package:flutter/material.dart';
import 'package:store_app/widgets/product_item.dart';
import 'package:store_app/widgets/search_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xff383838),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'electronics',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xff383838),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'jewelery',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xff383838),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'men\'s clothing',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xff383838),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'women\'s clothing',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
