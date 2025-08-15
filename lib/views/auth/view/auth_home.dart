import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/views/auth/view/login_page.dart';
import 'package:nearby_shoppiee/views/auth/view/register_page.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350.h,
                child: Image.asset('assets/images/460.jpg', fit: BoxFit.cover),
              ),
              SizedBox(height: 40.h),
              CustomElevatedButton(
                width: 230.h,
                backgroundColor: Colors.greenAccent,
                label: 'Login',
                fontfamily: 'Crimson-SemiBold',
                onPressed: () {
                  // NavigationHelper.push(context, LoginPage());
                  Get.to(
                    () => LoginPage(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1),
                  );
                },
              ),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                width: 230.h,
                backgroundColor: Colors.blueAccent,
                label: 'Register',
                fontfamily: 'Crimson-SemiBold',
                onPressed: () {
                  // NavigationHelper.push(context, RegisterPage());
                  Get.to(
                    () => RegisterPage(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1),
                  );
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.network(
                      'https://tse3.mm.bing.net/th/id/OIP.4YLiBGVRqntUYqURe_sPjgHaHa?pid=ImgDet&w=179&h=179&c=7&dpr=1.3&o=7&rm=3',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10.h),
                  CircleAvatar(
                    child: Image.network(
                      'https://cdn2.hubspot.net/hubfs/53/image8-2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
