import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:nearby_shoppiee/core/translation/translation.dart';
import 'package:nearby_shoppiee/views/orders/controller/cart_controller.dart';

import 'package:nearby_shoppiee/views/splash/splash_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(CartController()); // Initialize CartController

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size designSize = MediaQuery.of(context).size.shortestSide < 600
        ? const Size(392.7, 816.7)
        : const Size(834, 1194);
    return SafeArea(
      child: ScreenUtilInit(
        designSize: designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            translations: MyTranslations(),
            locale: Locale('en', 'US'),
            fallbackLocale: Locale('en', 'US'),

            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: const SplashScreen(),
      ),
    );
  }
}
