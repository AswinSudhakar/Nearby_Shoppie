import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class ProductDetailsPage extends StatelessWidget {
  final String? name;
  final int? price;
  final String? image;

  ProductDetailsPage({super.key, this.name, this.price, this.image});

  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.Ts8yufSFkXVM-Jdr7goryQHaJQ?w=147&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    'https://th.bing.com/th/id/OIP.jsz-xVheboPgPUK1gWMQkgHaE8?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    'https://th.bing.com/th/id/OIP.ZOf0aAsoduX82JNNqXD9vAHaE5?w=279&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
  ];

  @override
  Widget build(BuildContext context) {
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
                items: imageUrls
                    .map(
                      (item) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 20),
              CustomText(text: 'Product Name', fontSize: 25),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: '₹33',
                    fontSize: 27,
                    color: Colors.greenAccent,
                  ),
                  Text(
                    '₹38',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomText(
                text:
                    'Soft, fluffy, and rich in taste, our Milk Bread is a perfect choice for breakfast, snacks, or tea time. Made with the goodness of milk, it offers a mildly sweet flavor and a melt-in-the-mouth texture.',
              ),
              SizedBox(height: 20),

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
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
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
                                          width: 80,
                                          child: Image.network(
                                            image!,
                                            fit: BoxFit.cover,
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
                                                bottomLeft: Radius.circular(8),
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
                                      name!,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    CustomText(text: '$price', fontSize: 17),
                                  ],
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
