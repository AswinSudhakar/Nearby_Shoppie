import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/product/product/product_details_page.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, this.categoryname});
  final String? categoryname;
  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Radhuni Shemai - 200 gm - 4-2-15-VD-SQ",
      "price": 60,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Cheese Puffs Chips - 22 gm",
      "price": 700,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Nescafe Classic Coffee Jar – 50gm",
      "price": 25,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Akher Chini (Deshi Sugar) – 1kg",
      "price": 30,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Radhuni Shemai - 200 gm - 4-2-15-VD-SQ",
      "price": 60,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Cheese Puffs Chips - 22 gm",
      "price": 700,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Nescafe Classic Coffee Jar – 50gm",
      "price": 25,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Akher Chini (Deshi Sugar) – 1kg",
      "price": 30,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Radhuni Shemai - 200 gm - 4-2-15-VD-SQ",
      "price": 60,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Cheese Puffs Chips - 22 gm",
      "price": 700,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Nescafe Classic Coffee Jar – 50gm",
      "price": 25,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
    {
      "name": "Akher Chini (Deshi Sugar) – 1kg",
      "price": 30,
      "image":
          "https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: '${widget.categoryname}', fontSize: 25),
        leading: const BackButton(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.62,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return InkWell(
              onTap: () =>
                  //  NavigationHelper.push(
                  //   context,
                  //   ProductDetailsPage(
                  //     name: product["name"],
                  //     image: product["image"],
                  //     price: product["price"],
                  //   ),
                  // ),
                  Get.to(
                    ProductDetailsPage(
                      name: product["name"],
                      image: product["image"],
                      price: product["price"],
                    ),
                  ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade100,
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        product["image"],
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product["name"],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "${product["price"]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${product["name"]} added to bag'),
                            ),
                          );

                          // Get.bottomSheet(
                          //   elevation: 10,
                          //   SafeArea(
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(15.0),
                          //       child: Container(
                          //         decoration: BoxDecoration(
                          //           color: const Color.fromARGB(
                          //             255,
                          //             128,
                          //             235,
                          //             132,
                          //           ),
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         height: 50,
                          //         width: 300,
                          //         child: Column(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           children: [
                          //             CustomText(
                          //               text: '${product["name"]} added to bag',
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // );
                          // Future.delayed(Duration(seconds: 2), () {
                          //   if (Get.isBottomSheetOpen ?? false) {
                          //     Get.back();
                          //   }
                          // });

                          // Get.snackbar(
                          //   '',
                          //   '${product["name"]} added to bag',
                          //   padding: EdgeInsets.all(8),
                          //   margin: const EdgeInsets.only(
                          //     bottom: 20,
                          //     right: 50,
                          //     left: 50,
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size.fromHeight(35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        icon: const Icon(Icons.shopping_bag_outlined, size: 18),
                        label: const Text('Add To Bag'),
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
