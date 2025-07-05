import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/core/widgets/text_form_field.dart';
import 'package:nearby_shoppiee/views/auth/register_page.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
            SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Welcome Back',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'first',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                CustomText(
                  text: 'Login To Continue',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'first',
                ),
              ],
            ),
            SizedBox(height: 30),

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
            SizedBox(height: 20),
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
              label: "Login",
              fontfamily: 'first',
              onPressed: () => NavigationHelper.push(context, HomePage()),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {
                NavigationHelper.push(context, RegisterPage());
              },
              child: Text(
                'Dont have an Account? Sign-up',
                style: TextStyle(fontFamily: 'first'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
