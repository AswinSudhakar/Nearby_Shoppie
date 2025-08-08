import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/product/product/product_list_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {"name": "Grocery", "icon": Icons.shopping_bag},
      {"name": "Electronics", "icon": Icons.electrical_services},
      {"name": "Fashion", "icon": Icons.checkroom},
      {"name": "Books", "icon": Icons.book},
      {"name": "Toys", "icon": Icons.toys},
      {"name": "Beauty", "icon": Icons.face},
      {"name": "Home", "icon": Icons.home},
      {"name": "Sports", "icon": Icons.sports_soccer},
      {"name": "Grocery", "icon": Icons.shopping_bag},
      {"name": "Electronics", "icon": Icons.electrical_services},
      {"name": "Fashion", "icon": Icons.checkroom},
      {"name": "Books", "icon": Icons.book},
      {"name": "Toys", "icon": Icons.toys},
      {"name": "Beauty", "icon": Icons.face},
      {"name": "Home", "icon": Icons.home},
      {"name": "Sports", "icon": Icons.sports_soccer},
    ];
    return Scaffold(
      appBar: AppBar(title: CustomText(text: 'Categories', fontSize: 25)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                // NavigationHelper.push(
                //   context,
                //   ProductListPage(),
                //   // CategorywiseProductsPage(
                //   //   category: category["name"],
                //   //   icon: category["icon"],
                //   // ),
                // );
                Get.to(ProductListPage(categoryname: category['name']));
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(category["icon"], size: 40, color: Colors.deepPurple),
                    SizedBox(height: 10),
                    Text(
                      category["name"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
