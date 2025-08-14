import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';
import 'package:nearby_shoppiee/views/product/product/view/product_details_page.dart';

class CategorywiseProductsPage extends StatelessWidget {
  final Category category;
  final IconData? icon;

  const CategorywiseProductsPage({
    super.key,
    required this.category,
    this.icon,
  });

  // final List<Map<String, String>> productss = const [
  //   {"name": "Tea Powder", "price": "77", "offerPrice": "45"},
  //   {"name": "Bread (Brown)", "price": "40", "offerPrice": "32"},
  //   {"name": "Pickle (Mango)", "price": "60", "offerPrice": "55"},
  //   {"name": "Maida", "price": "67", "offerPrice": "50"},
  //   {"name": "Milk", "price": "32", "offerPrice": "28"},
  //   {"name": "Turmeric Powder", "price": "45", "offerPrice": "37"},
  //   {"name": "Basmati Rice", "price": "80", "offerPrice": "65"},
  //   {"name": "Onion", "price": "25", "offerPrice": "22"},
  //   {"name": "Coconut Oil", "price": "410", "offerPrice": "380"},
  //   {"name": "Toothpaste", "price": "89", "offerPrice": "49"},
  //   {"name": "Floor Cleaner (Lizol)", "price": "257", "offerPrice": "199"},
  // ];

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> filteredProducts = products
        .where((product) => product.categoryId == category.id)
        .toList();
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,

                      backgroundImage: icon == null
                          ? NetworkImage(category.image)
                          : null,
                      child: Icon(icon),
                    ),
                    const SizedBox(width: 12),
                    CustomText(
                      text: category.name,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                ),
              ],
            ),

            const SizedBox(height: 20),
            // Product List
            Expanded(
              child: ListView.builder(
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return GestureDetector(
                    onTap: () =>
                        Get.to(() => ProductDetailsPage(product: product)),
                    child: ProductCard(product: product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final double original =
        double.tryParse((product.price * 0.9).toString()) ?? 0;
    final double offer = double.tryParse(product.price.toString()) ?? 0;
    final int discount = ((1 - (offer / original)) * 100).round();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),

              // Product Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: product.name,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 8),

                    Row(
                      children: [
                        Text(
                          offer.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 8),
                        CustomText(
                          text: original.toString(),
                          fontSize: 17,
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(width: 8),
                        if (discount > 0)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red.shade600,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              '$discount% OFF',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
