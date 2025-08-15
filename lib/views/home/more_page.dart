import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/auth/view/login_page.dart';
import 'package:nearby_shoppiee/views/chat/view/chat_list_page.dart';
import 'package:nearby_shoppiee/views/chat/view/chat_page.dart';
import 'package:nearby_shoppiee/views/cart/views/cart_page.dart';
import 'package:nearby_shoppiee/views/orders/view/orders_page.dart';
import 'package:nearby_shoppiee/views/profile/view/profile_page.dart';
import 'package:nearby_shoppiee/views/profile/view/my_address_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMalayalam = Get.locale?.languageCode == 'ml';

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'More', fontSize: 25),
        actions: [
          Row(
            children: [
              Text('EN', style: TextStyle(fontSize: 14)),
              Switch(
                value: isMalayalam,
                onChanged: (value) {
                  if (value) {
                    Get.updateLocale(const Locale('ml', 'IN'));
                  } else {
                    Get.updateLocale(const Locale('en', 'US'));
                  }
                },
              ),
              Text('ML', style: TextStyle(fontSize: 14)),
              SizedBox(width: 8),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipOval(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/009/354/850/non_2x/male-portrait-people-profile-perfect-for-social-media-and-business-presentations-user-interface-ux-graphic-and-web-design-applications-and-interfaces-illustration-vector.jpg',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Aswin Thaliyil', fontSize: 20),
                      CustomText(text: ' +91 123456789', fontSize: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(thickness: 1),

          Expanded(
            child: ListView(
              children: [
                _buildDrawerItem(
                  icon: Icons.person,
                  text: AppStrings.profile.tr,
                  onTap: () {
                    // NavigationHelper.push(context, ProfilePage());
                    Get.to(() => ProfilePage());
                  },
                ),

                _buildDrawerItem(
                  icon: Icons.location_on,
                  text: AppStrings.myAddress.tr,
                  onTap: () {
                    // NavigationHelper.push(context, MyAddressPage());
                    Get.to(() => MyAddressPage());
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.receipt_long,
                  text: AppStrings.myOrders.tr,
                  onTap: () {
                    // NavigationHelper.push(context, OrdersPage());
                    Get.to(() => OrdersPage());
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.shopping_bag,
                  text: AppStrings.cart.tr,
                  onTap: () {
                    // NavigationHelper.push(context, Cart());
                    Get.to(() => Cart());
                  },
                ),

                _buildDrawerItem(
                  icon: Icons.chat,
                  text: AppStrings.chats.tr,
                  onTap: () {
                    Get.to(() => ChatListPage());
                  },
                ),
                // _buildDrawerItem(
                //   icon: Icons.store,
                //   text: 'Shops',
                //   onTap: () {
                //     NavigationHelper.push(context, ShopListPage());

                //   },
                // ),
                _buildDrawerItem(
                  icon: Icons.logout,
                  text: AppStrings.logout.tr,
                  onTap: () {
                    Get.offAll(() => LoginPage());
                  },
                ),

                // _buildDrawerItem(
                //   icon: Icons.category,
                //   text: 'categories',
                //   onTap: () {
                //     NavigationHelper.push(context, CategoriesPage());
                //   },
                // ),
                // _buildDrawerItem(
                //   icon: Icons.receipt_long,
                //   text: AppStrings.productListPage.tr,
                //   onTap: () {
                //     // NavigationHelper.push(context, ProductListPage());
                //     Get.to(() => ProductListPage());
                //   },
                // ),

                // _buildDrawerItem(
                //   icon: Icons.receipt_long,
                //   text: 'Product details'.tr,
                //   onTap: () {
                //     // NavigationHelper.push(context, ProductDetailsPage());
                //     Get.to(ProductDetailsPage());
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        text,
        style: TextStyle(fontFamily: 'Crimson-Bold', fontSize: 18),
      ),
      onTap: onTap,
    );
  }
}
