import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/chat/view/chat_page.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> chatNames = [
      'Aswin Thaliyil',
      'Bineesh Nambiar',
      'Keerthana',
      'Krishna',
      'Sarada',
    ];
    final List<String> chatrmessages = [
      'Hello, how are you?',
      'Are you coming to the party?',
      'Let\'s catch up soon!',
      'Did you receive my message?',
      'See you tomorrow!',
    ];
    final String imageUrl =
        'https://thumbs.dreamstime.com/b/profile-placeholder-image-gray-silhouette-no-photo-profile-placeholder-image-gray-silhouette-no-photo-person-avatar-123478438.jpg';

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        final chatName = chatNames[index];
        final chatMessage = chatrmessages[index];
        return GestureDetector(
          onTap: () => Get.to(
            () => ChatPage(
              name: chatName,
              message: chatMessage,
              imageUrl: imageUrl,
            ),
          ),
          child: Card(
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              title: CustomText(text: chatName),
              subtitle: CustomText(text: chatMessage),
            ),
          ),
        );
      },
    );
  }
}
