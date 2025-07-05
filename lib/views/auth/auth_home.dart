import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/views/auth/login_page.dart';
import 'package:nearby_shoppiee/views/auth/register_page.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/460.jpg'),
            SizedBox(height: 40),
            CustomElevatedButton(
              width: 230,
              backgroundColor: Colors.greenAccent,
              label: 'Login',
              fontfamily: 'Crimson-SemiBold',
              onPressed: () {
                NavigationHelper.push(context, LoginPage());
              },
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              width: 230,
              backgroundColor: Colors.blueAccent,
              label: 'Register',
              fontfamily: 'Crimson-SemiBold',
              onPressed: () {
                NavigationHelper.push(context, RegisterPage());
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image.network(
                    'https://tse3.mm.bing.net/th/id/OIP.4YLiBGVRqntUYqURe_sPjgHaHa?pid=ImgDet&w=179&h=179&c=7&dpr=1.3&o=7&rm=3',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.aoNGSVIqKHtM-NWf3QrvdwHaHa?w=184&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
