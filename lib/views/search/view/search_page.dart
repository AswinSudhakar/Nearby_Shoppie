import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/cart/controller/cartcontroller_page.dart';
import 'package:nearby_shoppiee/views/product/product/view/product_details_page.dart';
import 'package:nearby_shoppiee/views/search/controller/search_Controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchcontroller = Get.put(SearchControllerr());
    final searchedlist = searchcontroller.SearchedList;
    TextEditingController searchcntroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: searchcntroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Search'),
                  hintText: 'Search Products',
                  suffixIcon: Icon(Icons.search),
                ),

                onSubmitted: (value) {
                  searchcontroller.searchProducts(value);
                  searchcntroller.clear();
                },
                onChanged: (value) {
                  if (value.length > 1) {
                    searchcontroller.searchProducts(value);
                  }
                },
              ),

              LayoutBuilder(
                builder: (context, constraints) {
                  double itemHeight = 270; // height for each grid item
                  return Obx(() {
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
                      itemCount: searchedlist.length,
                      itemBuilder: (context, index) {
                        final product = searchedlist[index];

                        return GestureDetector(
                          onTap: () => Get.to(
                            () => ProductDetailsPage(product: product),
                          ),
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 3,
                            child: SizedBox(
                              height: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,

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
                                      mainAxisSize: MainAxisSize.min,

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
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
