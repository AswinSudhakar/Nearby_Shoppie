import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/orders/view/tabs/completed_orders.dart';
import 'package:nearby_shoppiee/views/orders/view/tabs/ongoing_orders.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: AppStrings.myOrders.tr,
            fontSize: 25,
            fontFamily: 'Crimson-Bold',
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(child: Text(AppStrings.ongoing.tr)),
                Tab(child: Text(AppStrings.completed.tr)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [OngoingOrdersTab(), CompletedOrdersTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
