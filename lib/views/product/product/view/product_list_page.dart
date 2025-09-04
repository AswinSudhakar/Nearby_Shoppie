import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/utils/snackbarhelper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/data/product_data.dart';
import 'package:nearby_shoppiee/mock%20data/models/categorymodel.dart';
import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';
import 'package:nearby_shoppiee/views/cart/controller/cartcontroller_page.dart';
import 'package:nearby_shoppiee/views/product/product/view/product_details_page.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, required this.category});
  final Category category;
  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final Cartcontroller cartcontroller = Get.find<Cartcontroller>();
  @override
  Widget build(BuildContext context) {
    List<ProductModel> productlist = products
        .where((element) => element.categoryId == widget.category.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: widget.category.name, fontSize: 25),
        leading: const BackButton(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: productlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.62,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final product = productlist[index];
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
                  Get.to(ProductDetailsPage(product: product)),

              // child: Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color: Colors.grey.shade100,
              //   ),
              //   padding: const EdgeInsets.all(8),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Center(
              //         child: Image.network(
              //           product.image,
              //           height: 100,
              //           width: 100,
              //           fit: BoxFit.contain,
              //         ),
              //       ),
              //       const SizedBox(height: 10),
              //       Text(
              //         product.name,
              //         maxLines: 2,
              //         overflow: TextOverflow.ellipsis,
              //         style: const TextStyle(fontSize: 14),
              //       ),
              //       const SizedBox(height: 6),
              //       Text(
              //         product.price.toString(),
              //         style: const TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.orange,
              //           fontSize: 16,
              //         ),
              //       ),
              //       const SizedBox(height: 8),
              //       SizedBox(
              //         width: double.infinity,
              //         child: ElevatedButton.icon(
              //           onPressed: () {
              //             ScaffoldMessenger.of(context).showSnackBar(
              //               SnackBar(
              //                 content: Text('${product.name} added to bag'),
              //               ),
              //             );

              //             // Get.bottomSheet(
              //             //   elevation: 10,
              //             //   SafeArea(
              //             //     child: Padding(
              //             //       padding: const EdgeInsets.all(15.0),
              //             //       child: Container(
              //             //         decoration: BoxDecoration(
              //             //           color: const Color.fromARGB(
              //             //             255,
              //             //             128,
              //             //             235,
              //             //             132,
              //             //           ),
              //             //           borderRadius: BorderRadius.circular(20),
              //             //         ),
              //             //         height: 50,
              //             //         width: 300,
              //             //         child: Column(
              //             //           mainAxisAlignment: MainAxisAlignment.center,
              //             //           children: [
              //             //             CustomText(
              //             //               text: '${product["name"]} added to bag',
              //             //             ),
              //             //           ],
              //             //         ),
              //             //       ),
              //             //     ),
              //             //   ),
              //             // );
              //             // Future.delayed(Duration(seconds: 2), () {
              //             //   if (Get.isBottomSheetOpen ?? false) {
              //             //     Get.back();
              //             //   }
              //             // });

              //             // Get.snackbar(
              //             //   '',
              //             //   '${product["name"]} added to bag',
              //             //   padding: EdgeInsets.all(8),
              //             //   margin: const EdgeInsets.only(
              //             //     bottom: 20,
              //             //     right: 50,
              //             //     left: 50,
              //             //   ),
              //             // );
              //           },
              //           style: ElevatedButton.styleFrom(
              //             backgroundColor: Colors.green,
              //             minimumSize: const Size.fromHeight(35),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(6),
              //             ),
              //           ),
              //           icon: const Icon(Icons.shopping_bag_outlined, size: 18),
              //           label: const Text('Add To Bag'),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 3,
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // ✅ Important: prevents overflow

                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
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
                          CustomText(text: '₹${product.price}', fontSize: 16),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 40,
                            child: CustomElevatedButton(
                              backgroundColor: const Color.fromARGB(
                                255,
                                133,
                                238,
                                187,
                              ),
                              label: 'Add To Cart',
                              onPressed: () {
                                cartcontroller.addToCart(product);
                                SnackBarHelper.show(
                                  context,
                                  message: '${product.name} added to cart',
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
            );
          },
        ),
      ),
    );
  }
}
