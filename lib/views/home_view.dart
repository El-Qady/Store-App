import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "Search",
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(bottom: 3),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 27, right: 10),
                child: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(height: 15),
          SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Category ${index + 1}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
