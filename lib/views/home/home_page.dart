import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';

import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/home/more_page.dart';
import 'package:nearby_shoppiee/views/home/notification_page.dart';
import 'package:nearby_shoppiee/views/home/search_page.dart';
import 'package:nearby_shoppiee/views/product/category/category_wise_productlist_page.dart';
import 'package:nearby_shoppiee/views/shop/individual/individual_shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // NavigationHelper.push(context, MorePage());
            Get.to(MorePage());
          },
          icon: Icon(Icons.menu),
        ),
        title: CustomText(
          text: "Nearby Shoppiee",
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
        actions: [
          IconButton(
            onPressed: () {
              // NavigationHelper.push(context, SearchPage());
              Get.to(SearchPage());
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // NavigationHelper.push(context, NotificationPage());
              Get.to(NotificationPage());
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30, child: Icon(Icons.location_on)),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Your Location'),
                            FittedBox(
                              child: CustomText(
                                text: 'Abc Home ,Thaliyil, Kannur ',
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    CustomText(text: 'Shop By Category', fontSize: 20),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1, // Width to height ratio
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      final category = 'category ${index + 1}';
                      return InkWell(
                        onTap: () =>
                            // NavigationHelper.push(
                            //   context,
                            //   CategorywiseProductsPage(category: category),
                            // ),
                            Get.to(
                              CategorywiseProductsPage(category: category),
                            ),
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://static.vecteezy.com/system/resources/previews/024/123/312/non_2x/one-single-line-drawing-of-fresh-vegetables-milk-lettuce-carrot-and-bread-graphic-illustration-daily-staple-food-badge-concept-modern-continuous-line-draw-grocery-store-design-png.png',
                                    ),
                                    height: 60,
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
            SizedBox(height: 20),

            //Horizondal Nearby Shops List
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomText(text: 'Shops Nearby', fontSize: 20),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () => NavigationHelper.push(
                            context,
                            IndividualShopPage(name: 'Shop Name'),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(15),
                                  ),
                                  child: Image.network(
                                    'https://th.bing.com/th/id/OIP.4YGuDSwguXVVmVLl60Mk-AHaHa?w=199&h=199&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                                    height: 160,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(
                                    text: 'Shop Name',
                                    fontSize: 16,
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
