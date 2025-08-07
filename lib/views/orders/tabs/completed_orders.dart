import 'package:flutter/material.dart';

class CompletedOrdersTab extends StatelessWidget {
  const CompletedOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy completed orders
    final completedOrders = [
      {'orderId': '4321', 'item': 'Coconut, Orange ', 'status': 'Completed'},
      {'orderId': '8765', 'item': 'Egg', 'status': 'Completed'},
      {'orderId': '4321', 'item': 'Coconut, Orange ', 'status': 'Completed'},
      {'orderId': '8765', 'item': 'Egg', 'status': 'Completed'},
      {'orderId': '4321', 'item': 'Coconut, Orange ', 'status': 'Completed'},
      {'orderId': '8765', 'item': 'Egg', 'status': 'Completed'},
      {'orderId': '4321', 'item': 'Coconut, Orange ', 'status': 'Completed'},
      {'orderId': '8765', 'item': 'Egg', 'status': 'Completed'},
    ];

    return ListView.builder(
      itemCount: completedOrders.length,
      itemBuilder: (context, index) {
        final order = completedOrders[index];
        return Card(
          color: Colors.green[50],
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: const Icon(Icons.check_circle, color: Colors.green),
            title: Text(order['item']!),
            subtitle: Text('Status: ${order['status']}'),
            trailing: Text('#${order['orderId']}'),
          ),
        );
      },
    );
  }
}
