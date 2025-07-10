import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/utils/helpers/navigation_helper.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/shop/add_shop_page.dart';

class ShopListPage extends StatelessWidget {
  const ShopListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: 'Shops', fontSize: 25)),
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: 'Add New Shop',
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            NavigationHelper.push(context, AddShopPage());
          },
        ),
      ),
      body: ListView(),
    );
  }
}
