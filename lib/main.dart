import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:nearby_shoppiee/core/translation/translation.dart';
import 'package:nearby_shoppiee/views/cart/controller/cartcontroller_page.dart';
import 'package:nearby_shoppiee/views/home/main_landing_page.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(Cartcontroller());

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
        child: const MainScreen(),
      ),
    );
  }
}
