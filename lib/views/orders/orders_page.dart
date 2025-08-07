import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/orders/tabs/completed_orders.dart';
import 'package:nearby_shoppiee/views/orders/tabs/ongoing_orders.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: "Orders",
            fontSize: 25,
            fontFamily: 'Crimson-Bold',
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(child: Text('Ongoing')),
                Tab(child: Text('Completed')),
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
