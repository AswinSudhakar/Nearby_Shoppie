import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';
import 'package:nearby_shoppiee/views/product/category/categories_page.dart';
import 'package:nearby_shoppiee/views/product/product/product_list_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String? selectedvalue;
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
  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
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
              SizedBox(height: 10),

              CustomElevatedButton(
                label: 'Add More Products',
                onPressed: () {
                  Get.to(CategoriesPage());
                },
                backgroundColor: const Color.fromARGB(255, 136, 231, 139),
              ),
              SizedBox(height: 10),
              CustomText(text: 'Expected Date&Time', fontSize: 25),
              SizedBox(height: 10),
              SizedBox(
                width: 300,
                height: 40,
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Select Date',
                    prefixIcon: Icon(Icons.calendar_month),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 6,
                children: items.map((value) {
                  return ChoiceChip(
                    label: Text(value),
                    selectedColor: const Color.fromARGB(255, 152, 226, 245),
                    selected: selectedvalue == value,
                    onSelected: (selected) {
                      setState(() {
                        selectedvalue = selected ? value : null;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              CustomText(text: 'Delivery Location', fontSize: 25),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      CustomText(text: 'ABC Home'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 221, 163),
                  borderRadius: BorderRadius.circular(15),
                ),

                height: 115,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Subtotal'),
                          CustomText(text: '362'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Delivery Charge'),
                          CustomText(text: '62'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Total'),
                          CustomText(text: '432'),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  label: 'Place Order',
                  width: double.infinity,
                  onPressed: () {
                    Get.off(HomePage());
                  },
                  backgroundColor: const Color.fromARGB(255, 136, 231, 139),
                ),
              ),
            ],
          ),
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
