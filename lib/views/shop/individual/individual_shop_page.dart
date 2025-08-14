import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';

class IndividualShopPage extends StatelessWidget {
  final Shop shop;
  const IndividualShopPage({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> productslist = products
        .where((product) => product.shopId == shop.id)
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(shop.profileImage),
                          ),
                          CustomText(text: shop.name, fontSize: 25),
                        ],
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: CustomText(text: shop.description, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText(text: 'Category $index', fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: productslist.length,
                itemBuilder: (context, index) {
                  final product = productslist[index];
                  return _productBuider(product: product);
                },
              ),
            ),
            // _productBuider(name: 'Tea Powder', price: '77', offerprice: '45'),
            // _productBuider(
            //   name: 'Bread (Brown)',
            //   price: '40',
            //   offerprice: '32',
            // ),
            // _productBuider(
            //   name: 'Pickle (Mango)',
            //   price: '60',
            //   offerprice: '55',
            // ),
            // _productBuider(name: 'Maida', price: '67', offerprice: '50'),
            // _productBuider(name: 'Milk', price: '32', offerprice: '28'),
            // _productBuider(
            //   name: 'Turmeric Powder',
            //   price: '45',
            //   offerprice: '37',
            // ),
            // _productBuider(name: 'Basmati Rice', price: '80', offerprice: '65'),
            // _productBuider(name: 'Onion', price: '25', offerprice: '22'),
            // _productBuider(
            //   name: 'Coconut Oil',
            //   price: '410',
            //   offerprice: '380',
            // ),

            // _productBuider(name: 'Toothpaste', price: '89', offerprice: '49'),
            // _productBuider(
            //   name: 'Floor Cleaner (Lizol)',
            //   price: '257',
            //   offerprice: '199',
            // ),
          ],
        ),
      ),
    );
  }

  Widget _productBuider({required ProductModel product}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),

              // Product Info
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    // Title
                    CustomText(
                      text: product.name,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 8),

                    // Prices
                    Row(
                      children: [
                        // Original Price
                        Text(
                          product.price.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8),

                        // Offer Price
                        CustomText(
                          text: (product.price * 0.9).toStringAsFixed(2),
                          fontSize: 17,
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.bold,
                        ),

                        SizedBox(width: 8),

                        // Optional: Discount Badge
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.shade600,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '23% OFF',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),

                    CustomElevatedButton(
                      backgroundColor: const Color.fromARGB(255, 132, 231, 183),
                      width: 140,
                      height: 40,
                      label: 'Add To Cart',
                      textColor: Colors.black,
                      onPressed: () {},
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
