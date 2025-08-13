import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/auth/view/auth_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateScreen();
    super.initState();
  }

  Future<void> _navigateScreen() async {
    await Future.delayed(Duration(seconds: 4));
    Get.to(
      () => AuthHome(),
      transition: Transition.zoom,
      duration: Duration(seconds: 1),
    );
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => AuthHome()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/460.jpg'),

            CustomText(
              text: 'Shoppikko',
              fontSize: 30,
              fontFamily: 'Crimson-SemiBold',
            ),
          ],
        ),
      ),
    );
  }
}
