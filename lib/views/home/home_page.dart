import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/utils/navigation_helper.dart';
import 'package:nearby_shoppiee/core/utils/snackbarhelper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';

import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';
import 'package:nearby_shoppiee/views/cart/controller/cartcontroller_page.dart';
import 'package:nearby_shoppiee/views/home/notification_page.dart';
import 'package:nearby_shoppiee/views/home/search_page.dart';
import 'package:nearby_shoppiee/views/product/category/view/category_wise_productlist_page.dart';
// import 'package:nearby_shoppiee/views/product/product/controller/Product_controller.dart';
import 'package:nearby_shoppiee/views/product/product/view/product_details_page.dart';
import 'package:nearby_shoppiee/views/shop/view/individual/individual_shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Cartcontroller ccartcontroller = Get.find<Cartcontroller>();

  // final Cartcontroller cartController = Get.put(Cartcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        // leading: IconButton(
        //   onPressed: () {
        //     // NavigationHelper.push(context, MorePage());
        //     Get.to(()=>MorePage());
        //   },
        //   icon: Icon(Icons.menu),
        // ),
        title: CustomText(
          text: "Nearby Shoppiee",
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
        actions: [
          IconButton(
            onPressed: () {
              // NavigationHelper.push(context, SearchPage());
              Get.to(() => SearchPage());
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // NavigationHelper.push(context, NotificationPage());
              Get.to(() => NotificationPage());
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
                            CustomText(text: AppStrings.yourLocation.tr),
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
                    CustomText(
                      text: AppStrings.shopByCategory.tr,
                      fontSize: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1, // Width to height ratio
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return InkWell(
                        onTap: () =>
                            // NavigationHelper.push(
                            //   context,
                            //   CategorywiseProductsPage(category: category),
                            // ),
                            Get.to(
                              () =>
                                  CategorywiseProductsPage(category: category),
                            ),
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      15,
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                        category.image,

                                        //'https://static.vecteezy.com/system/resources/previews/024/123/312/non_2x/one-single-line-drawing-of-fresh-vegetables-milk-lettuce-carrot-and-bread-graphic-illustration-daily-staple-food-badge-concept-modern-continuous-line-draw-grocery-store-design-png.png'
                                      ),
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              CustomText(text: category.name),
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
            Divider(thickness: 1, color: Colors.grey[300]),

            //Horizondal Nearby Shops List
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomText(
                    text: AppStrings.shopsNearby.tr,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemCount: shops.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final Shop shop = shops[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () => NavigationHelper.push(
                            context,
                            IndividualShopPage(shop: shop),
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
                                    shop.shopImage,
                                    height: 160,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(
                                    text: shop.name,
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
                SizedBox(height: 10),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            //Whats New Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Whats New', fontSize: 20),
                      TextButton(
                        onPressed: () {},
                        child: CustomText(text: 'View More', fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                LayoutBuilder(
                  builder: (context, constraints) {
                    double itemHeight = 270; // height for each grid item
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            constraints.maxWidth / (itemHeight * 2),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];

                        return GestureDetector(
                          onTap: () => Get.to(
                            () => ProductDetailsPage(product: product),
                          ),
                          child:
                              //  Card(
                              //   color: Colors.white,
                              //   elevation: 4,
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(15),
                              //   ),
                              //   child: Column(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       ClipRRect(
                              //         borderRadius: BorderRadius.only(
                              //           topLeft: Radius.circular(15),
                              //           topRight: Radius.circular(15),
                              //           bottomLeft: Radius.circular(15),
                              //           bottomRight: Radius.circular(15),
                              //         ),
                              //         child: Image.network(
                              //           product.image,
                              //           width: double.infinity,
                              //           height: 150,
                              //           fit: BoxFit.contain,
                              //         ),
                              //       ),
                              //       Text(
                              //         overflow: TextOverflow.ellipsis,
                              //         product.name,
                              //         style: TextStyle(
                              //           fontSize: 16,
                              //           fontWeight: FontWeight.w600,
                              //         ),
                              //       ),
                              //       CustomText(
                              //         text: '₹${product.price}',
                              //         fontSize: 16,
                              //       ),
                              //       CustomElevatedButton(
                              //         backgroundColor: const Color.fromARGB(
                              //           255,
                              //           133,
                              //           238,
                              //           187,
                              //         ),
                              //         width: 140,
                              //         height: 40,
                              //         label: 'Add To Cart',
                              //         onPressed: () {
                              //           Get.snackbar(
                              //             '',
                              //             '${product.name} added to cart',
                              //             snackPosition: SnackPosition.BOTTOM,
                              //             backgroundColor: Colors.green[100],
                              //             colorText: Colors.black,
                              //           );
                              //         },
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 3,
                                child: SizedBox(
                                  height: 300,
                                  child: Column(
                                    mainAxisSize: MainAxisSize
                                        .min, // ✅ Important: prevents overflow

                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                              top: Radius.circular(15),
                                            ),
                                        child: Image.network(
                                          product.image,
                                          height: 139,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize
                                              .min, // ✅ Ensures it only takes needed height

                                          children: [
                                            Text(
                                              product.name,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            CustomText(
                                              text: '₹${product.price}',
                                              fontSize: 16,
                                            ),
                                            const SizedBox(height: 8),
                                            SizedBox(
                                              height: 40,
                                              child: CustomElevatedButton(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                      255,
                                                      133,
                                                      238,
                                                      187,
                                                    ),
                                                label: 'Add To Cart',
                                                onPressed: () {
                                                  Get.find<Cartcontroller>()
                                                      .addToCart(product);

                                                  // SnackBarHelper.show(
                                                  //   context,
                                                  //   message:
                                                  //       '${product.name} added to cart',
                                                  // );
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
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*
child: SizedBox(
                        height: 170,
                        width: 70,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://2.wlimg.com/product_images/bc-full/2022/9/10844391/cold-pressed-virgin-coconut-oil-1663134672-6537817.jpeg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12),

                            // Product Details
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Product Name ${index + 1}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "50 ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text("Add to Cart"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
*/