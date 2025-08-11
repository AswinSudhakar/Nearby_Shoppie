import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: 'Save',

          backgroundColor: Colors.greenAccent,
          onPressed: () {
            Get.to(() => HomePage());
          },
        ),
      ),
      appBar: AppBar(
        title: CustomText(
          text: AppStrings.editProfile.tr,
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/009/354/850/non_2x/male-portrait-people-profile-perfect-for-social-media-and-business-presentations-user-interface-ux-graphic-and-web-design-applications-and-interfaces-illustration-vector.jpg',
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                style: TextStyle(fontFamily: 'Crimson-Bold'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: CustomText(text: 'Full Name'),
                  hintText: 'Enter Your Full Name',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
