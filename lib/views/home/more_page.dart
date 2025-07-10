import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/profile/profile_page.dart';
import 'package:nearby_shoppiee/views/profile/my_address_page.dart';
import 'package:nearby_shoppiee/views/shop/shop_list_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: 'More', fontSize: 25)),
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
                  text: 'Profile',
                  onTap: () {
                    NavigationHelper.push(context, ProfilePage());
                  },
                ),

                _buildDrawerItem(
                  icon: Icons.location_on,
                  text: 'My Address',
                  onTap: () {
                    NavigationHelper.push(context, MyAddressPage());
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.receipt_long,
                  text: 'My Orders',
                  onTap: () {
                    NavigationHelper.push(context, MyAddressPage());
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.shopping_bag,
                  text: 'My Wishlst',
                  onTap: () {
                    NavigationHelper.push(context, MyAddressPage());
                  },
                ),
                _buildDrawerItem(icon: Icons.chat, text: 'Chats', onTap: () {}),
                _buildDrawerItem(
                  icon: Icons.store,
                  text: 'Shops',
                  onTap: () {
                    NavigationHelper.push(context, ShopListPage());
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.logout,
                  text: 'Logout',
                  onTap: () {},
                ),
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

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
