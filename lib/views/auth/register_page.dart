import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/core/widgets/text_form_field.dart';
import 'package:nearby_shoppiee/views/auth/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  String? _selectedCategory;

  List<String> items = ['English', 'Hindi', 'Malayalam'];
  DropdownMenuItem<String?> buildmenuitems(String item) =>
      DropdownMenuItem(value: item, child: Text(item));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  CustomText(
                    text: 'Nearby Shoppiee',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'first',
                  ),
                ],
              ),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Create Account Now!',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'first',
                  ),
                ],
              ),

              SizedBox(height: 30),

              SizedBox(height: 10),
              CustomTextFormField(
                controller: nameController,
                labelText: 'Full Name',
                hintText: 'Enter your Full Name',
                prefixIcon: Icons.person,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Full Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: emailController,
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: phoneNumberController,
                labelText: 'Phone',
                hintText: 'Enter your Phone Number',
                prefixIcon: Icons.email,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Phone Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              CustomTextFormField(
                controller: passswordController,
                labelText: 'Password',

                hintText: 'Enter your Password',
                prefixIcon: Icons.password,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String?>(
                  hint: Text('Select Audio Language'),
                  isExpanded: true,
                  value: _selectedCategory,
                  items: items.map(buildmenuitems).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value;
                    });
                  },
                ),
              ),

              SizedBox(height: 45),
              CustomElevatedButton(
                backgroundColor: Colors.greenAccent,
                width: 190,
                label: "Register",
                fontfamily: 'first',
                onPressed: () {
                  Get.to(
                    LoginPage(),
                    transition: Transition.leftToRight,
                    duration: Duration(seconds: 1),
                  );
                  Get.bottomSheet(
                    elevation: 10,
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 128, 235, 132),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: 'Registration Successful!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  Future.delayed(Duration(seconds: 2), () {
                    if (Get.isBottomSheetOpen ?? false) {
                      Get.back();
                    }
                  });
                },

                // NavigationHelper.push(context, HomePage()),
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  // NavigationHelper.push(context, LoginPage());
                  Get.to(LoginPage());
                },
                child: Text(
                  ' have an Account? Sign-in',
                  style: TextStyle(fontFamily: 'first'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
