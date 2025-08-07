import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Notifications",
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    child: ListTile(
                      title: CustomText(text: 'Order #1234'),
                      subtitle: CustomText(
                        text:
                            'Your order is confirmed. Please check if everything is okey',
                      ),
                      trailing: Icon(Icons.notifications),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
