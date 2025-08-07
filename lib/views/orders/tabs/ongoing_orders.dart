import 'package:flutter/material.dart';

class OngoingOrdersTab extends StatelessWidget {
  const OngoingOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy ongoing orders
    final ongoingOrders = [
      {'orderId': '1234', 'item': 'Tomato', 'status': 'In Progress'},
      {'orderId': '5678', 'item': 'Chicken', 'status': 'Scheduled'},
      {'orderId': '1234', 'item': 'Tomato', 'status': 'In Progress'},
      {'orderId': '5678', 'item': 'Chicken', 'status': 'Scheduled'},
      {'orderId': '1234', 'item': 'Tomato', 'status': 'In Progress'},
      {'orderId': '5678', 'item': 'Chicken', 'status': 'Scheduled'},
      {'orderId': '1234', 'item': 'Tomato', 'status': 'In Progress'},
      {'orderId': '5678', 'item': 'Chicken', 'status': 'Scheduled'},
    ];

    return ListView.builder(
      itemCount: ongoingOrders.length,
      itemBuilder: (context, index) {
        final order = ongoingOrders[index];
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(order['item']!),
            subtitle: Text('Status: ${order['status']}'),
            trailing: Text('#${order['orderId']}'),
          ),
        );
      },
    );
  }
}
