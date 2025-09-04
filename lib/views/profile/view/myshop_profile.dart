import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/utils/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/profile/view/edit_myshop_page.dart';

class MyshopProfile extends StatelessWidget {
  const MyshopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: AppStrings.editProfile.tr,
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            NavigationHelper.push(context, EditMyshopPage());
          },
        ),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-vector/shop-with-sign-we-are-open_52683-38687.jpg',
            ),
          ),

          _customProfileField(
            title: 'Shop Name',
            subtitle: 'Suhana Store',
            icon: Icons.store,
          ),

          _customProfileField(
            title: 'Phone',
            subtitle: '+91 123456789',
            icon: Icons.phone,
          ),
          _customProfileField(
            title: 'Details',
            subtitle:
                'Stationary Shop with a-z things that you need in your home',
            icon: Icons.info,
          ),
          _customProfileField(
            title: 'Address',
            subtitle: 'Suhana Store, ABC building, Near irumbanthatt, Thaliyil',
            icon: Icons.my_location_outlined,
          ),
        ],
      ),
    );
  }
}

Widget _customProfileField({required title, required subtitle, required icon}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 244, 230, 230),
      borderRadius: BorderRadius.circular(18),
    ),
    child: ListTile(
      leading: Icon(icon),
      title: CustomText(text: title, fontSize: 13, fontFamily: 'Crimson-Bold'),
      subtitle: CustomText(
        text: subtitle,
        fontSize: 17,
        fontFamily: 'Crimson-Bold',
      ),
    ),
  );
}
