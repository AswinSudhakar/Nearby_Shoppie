import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';

import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/data/product_data.dart';
import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';
import 'package:nearby_shoppiee/views/cart/controller/cartcontroller_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductModel product;

  ProductDetailsPage({super.key, required this.product});

  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.Ts8yufSFkXVM-Jdr7goryQHaJQ?w=147&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    'https://th.bing.com/th/id/OIP.jsz-xVheboPgPUK1gWMQkgHaE8?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    'https://th.bing.com/th/id/OIP.ZOf0aAsoduX82JNNqXD9vAHaE5?w=279&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
  ];

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productlist = products;

    productlist.shuffle(Random());

    // Take 10 random elements
    List<ProductModel> random10 = productlist.take(10).toList();
    return Scaffold(
      appBar: AppBar(title: CustomText(text: 'Product Details', fontSize: 25)),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 250,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                ),
                // items: [Image.network('$image')],
                items: imageUrls
                    .map(
                      (item) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          product.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 20),
              CustomText(text: product.name, fontSize: 25),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: '₹${product.price}',
                    fontSize: 27,
                    color: Colors.greenAccent,
                  ),
                  Text(
                    '₹${(product.price * 1.4).toStringAsFixed(2)}',

                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomText(text: product.description),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    label: 'AddToCart',
                    backgroundColor: Colors.greenAccent,
                    onPressed: () {
                      Get.find<Cartcontroller>().addToCart(product);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),

              Divider(),

              SizedBox(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'You can also checkout these items',
                      fontSize: 23,
                    ),
                    SizedBox(height: 10),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: random10.length,
                        itemBuilder: (context, index) {
                          final product1 = random10[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: InkWell(
                              onTap: () {
                                print("Tapped: ${product1.name}");
                                Get.to(
                                  () => ProductDetailsPage(product: product1),
                                  preventDuplicates: false,
                                );
                              },

                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            height: 100,
                                            width: 130,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),

                                              child: Image.network(
                                                product1.image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 6,
                                                vertical: 2,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                    8,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                'New',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        product1.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      CustomText(
                                        text: product1.price.toString(),
                                        fontSize: 17,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
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
