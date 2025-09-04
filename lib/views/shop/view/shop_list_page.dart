import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/data/shop_data.dart';
import 'package:nearby_shoppiee/mock%20data/models/shopmodel.dart';
import 'package:nearby_shoppiee/views/shop/view/individual/individual_shop_page.dart';
import 'package:nearby_shoppiee/views/shop/view/add_shop_page.dart';

class ShopListPage extends StatelessWidget {
  const ShopListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: 'Shops', fontSize: 25)),
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: 'Add New Shop',
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            // NavigationHelper.push(context, AddShopPage());
            Get.to(() => AddShopPage());
          },
        ),
      ),
      body: ListView.builder(
        itemCount: shops.length,

        itemBuilder: (context, index) {
          final shop = shops[index];
          return _buildShopList(context: context, shop: shop);
        },
      ),
    );
  }

  Widget _buildShopList({required Shop shop, required context}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // NavigationHelper.push(context, IndividualShopPage(name: name));
                Get.to(() => IndividualShopPage(shop: shop));
              },
              child: ListTile(
                title: CustomText(text: shop.name, fontSize: 23),
                subtitle: FittedBox(child: CustomText(text: shop.address)),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    shop.profileImage ??
                        'https://th.bing.com/th/id/OIP.D7vUlKYVE4k_Ma10WgmJ8QHaF-?w=241&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                  ),
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            ListTile(title: CustomText(text: shop.description)),
            Image.network(
              shop.shopImage,
              loadingBuilder:
                  (
                    BuildContext context,
                    Widget child,
                    ImageChunkEvent? loadingProgress,
                  ) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*
// _buildShopList(
            //   context: context,
            //   name: 'Suhana Stores',
            //   address: 'Andruman, Near irmbanhat,Thaliyil',
            //   profileimage:
            //       'https://th.bing.com/th/id/OIP.D7vUlKYVE4k_Ma10WgmJ8QHaF-?w=241&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopimage:
            //       'https://th.bing.com/th/id/OIP.D7vUlKYVE4k_Ma10WgmJ8QHaF-?w=241&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopdetail: 'Grocery Shop',
            // ),

            // _buildShopList(
            //   context: context,

            //   name: 'JK Shop',
            //   address: 'Jayakrishnan,Kanakalayam,Thaliyil',
            //   profileimage:
            //       'https://th.bing.com/th/id/OIP.rQrSXFS8w-TYO45Y1RQ8cgHaHa?w=194&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopimage:
            //       'https://th.bing.com/th/id/OIP.rQrSXFS8w-TYO45Y1RQ8cgHaHa?w=194&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopdetail: 'Grocery Shop',
            // ),

            // _buildShopList(
            //   context: context,
            //   name: 'Kalco Supermarket',
            //   address: 'Near Eng College, Dharmasala',
            //   profileimage:
            //       'https://th.bing.com/th/id/OIP.XOoY-oixZ2hDKYsyaFH0hAHaF_?w=241&h=193&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopimage:
            //       'https://th.bing.com/th/id/OIP.XOoY-oixZ2hDKYsyaFH0hAHaF_?w=241&h=193&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            //   shopdetail: 'Supermarket',
            // ),
*/