import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/chat/view/chat_page.dart';

class ShopsChat extends StatelessWidget {
  const ShopsChat({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> shopNames = ['Suhana Store', 'Tech World', 'Fashion Hub'];
    List<String> shopMessages = [
      'Your order is ready for pickup!',
      'New gadgets available in stock.',
      'Check out our latest fashion collection!',
    ];
    final String imageUrl =
        'https://img.freepik.com/free-vector/shop-with-sign-open-design_23-2148544029.jpg';
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        String shopName = shopNames[index];
        String shopMessage = shopMessages[index];

        return GestureDetector(
          onTap: () => Get.to(
            () => ChatPage(
              name: shopName,
              message: shopMessage,
              imageUrl: imageUrl,
            ),
          ),
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            title: CustomText(text: shopName),
            subtitle: CustomText(text: shopMessage),
          ),
        );
      },
    );
  }
}
