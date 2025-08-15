import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/utils/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/profile/view/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: AppStrings.editProfile.tr,
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            NavigationHelper.push(context, EditProfilePage());
          },
        ),
      ),
      appBar: AppBar(
        title: CustomText(text: AppStrings.profile.tr, fontSize: 25),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/009/354/850/non_2x/male-portrait-people-profile-perfect-for-social-media-and-business-presentations-user-interface-ux-graphic-and-web-design-applications-and-interfaces-illustration-vector.jpg',
                ),
              ),

              _customProfileField(
                title: 'Full Name',
                subtitle: 'Aswin Thaliyil',
                icon: Icons.person_4_outlined,
              ),

              _customProfileField(
                title: 'Phone',
                subtitle: '+91 123456789',
                icon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customProfileField({
    required title,
    required subtitle,
    required icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 230, 230),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: CustomText(
          text: title,
          fontSize: 13,
          fontFamily: 'Crimson-Bold',
        ),
        subtitle: CustomText(
          text: subtitle,
          fontSize: 17,
          fontFamily: 'Crimson-Bold',
        ),
      ),
    );
  }
}
