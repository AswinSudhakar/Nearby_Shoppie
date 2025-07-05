import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/views/auth/login_page.dart';
import 'package:nearby_shoppiee/views/auth/register_page.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/460.jpg'),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.push(context, LoginPage());
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.push(context, RegisterPage());
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
