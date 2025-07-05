import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/core/widgets/text_form_field.dart';
import 'package:nearby_shoppiee/views/auth/login_page.dart';
import 'package:nearby_shoppiee/views/auth/register_page.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passswordController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneNumberController = TextEditingController();

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
                controller: _nameController,
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
                controller: _emailController,
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
                controller: _phoneNumberController,
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
                controller: _passswordController,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Text('Forgot Password?')),
                ],
              ),

              SizedBox(height: 45),
              CustomElevatedButton(
                backgroundColor: Colors.greenAccent,
                width: 190,
                label: "Register",
                fontfamily: 'first',
                onPressed: () => NavigationHelper.push(context, HomePage()),
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  NavigationHelper.push(context, LoginPage());
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
