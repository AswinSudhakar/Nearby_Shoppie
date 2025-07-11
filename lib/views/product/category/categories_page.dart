import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/product/category/category_wise_productlist_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: double.infinity,

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1, // Width to height ratio
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                final category = 'category ${index + 1}';
                return InkWell(
                  onTap: () => NavigationHelper.push(
                    context,
                    CategorywiseProductsPage(category: category),
                  ),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image(
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.UoMZ3c0HHi4QKjBQBzXk1wHaFb?w=248&h=181&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                            ),
                          ),
                        ),
                        CustomText(text: category),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
