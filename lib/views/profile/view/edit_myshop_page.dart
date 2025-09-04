import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/core/widgets/text_form_field.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';

class EditMyshopPage extends StatefulWidget {
  const EditMyshopPage({super.key});

  @override
  State<EditMyshopPage> createState() => _EditMyshopPageState();
}

class _EditMyshopPageState extends State<EditMyshopPage> {
  TextEditingController controller = TextEditingController();

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
                  'https://img.freepik.com/free-vector/shop-with-sign-we-are-open_52683-38687.jpg',
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                style: TextStyle(fontFamily: 'Crimson-Bold'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: CustomText(text: 'Shop Name'),
                  hintText: 'Enter Your Full Name',
                ),
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: controller,
                labelText: 'Phone',
                hintText: 'Enter The Phone Number',
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: controller,
                labelText: 'Details',
                hintText: 'Enter The Shop Details',
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: controller,
                labelText: 'Address',
                hintText: 'Enter The Shop Address',
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
