import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class CategorywiseProductsPage extends StatelessWidget {
  final String category;

  const CategorywiseProductsPage({super.key, required this.category});

  final List<Map<String, String>> products = const [
    {"name": "Tea Powder", "price": "77", "offerPrice": "45"},
    {"name": "Bread (Brown)", "price": "40", "offerPrice": "32"},
    {"name": "Pickle (Mango)", "price": "60", "offerPrice": "55"},
    {"name": "Maida", "price": "67", "offerPrice": "50"},
    {"name": "Milk", "price": "32", "offerPrice": "28"},
    {"name": "Turmeric Powder", "price": "45", "offerPrice": "37"},
    {"name": "Basmati Rice", "price": "80", "offerPrice": "65"},
    {"name": "Onion", "price": "25", "offerPrice": "22"},
    {"name": "Coconut Oil", "price": "410", "offerPrice": "380"},
    {"name": "Toothpaste", "price": "89", "offerPrice": "49"},
    {"name": "Floor Cleaner (Lizol)", "price": "257", "offerPrice": "199"},
  ];

  @override
  Widget build(BuildContext context) {
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
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.4YGuDSwguXVVmVLl60Mk-AHaHa?w=199&h=199&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                      ),
                    ),
                    const SizedBox(width: 12),
                    CustomText(
                      text: category,
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
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    name: product["name"]!,
                    price: product["price"]!,
                    offerPrice: product["offerPrice"]!,
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
  final String name;
  final String price;
  final String offerPrice;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.offerPrice,
  });

  @override
  Widget build(BuildContext context) {
    final double original = double.tryParse(price) ?? 0;
    final double offer = double.tryParse(offerPrice) ?? 0;
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
                  'https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
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
                      text: name,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 8),

                    Row(
                      children: [
                        Text(
                          '₹$price',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 8),
                        CustomText(
                          text: '₹$offerPrice',
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
