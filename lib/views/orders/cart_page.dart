import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = const [
      {"name": "Maida", "price": "67", "offerPrice": "50"},
      {"name": "Milk", "price": "32", "offerPrice": "28"},
      {"name": "Turmeric Powder", "price": "45", "offerPrice": "37"},
    ];

    final List<String> items = [
      '8 AM-10 AM',
      '10 AM-11 AM',
      '11 AM-2 PMM',
      '2 PM-4 PM',
    ];
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "My Bag",
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomText(text: "Products", fontSize: 25),
            SizedBox(
              height: 450,
              child: Flexible(
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
            ),

            CustomElevatedButton(
              label: 'Add More Products',
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 136, 231, 139),
            ),
            SizedBox(height: 10),
            CustomText(text: 'Expected Date&Time', fontSize: 25),
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        CustomText(text: '1'),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
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
