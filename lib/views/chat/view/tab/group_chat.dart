import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/chat/view/chat_page.dart';

class GrouCphat extends StatelessWidget {
  const GrouCphat({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> chatNames = [
      'Home',
      'Thaliyil Buddies',
      'Kannur Teamsss',
      'machanzz',
    ];
    final List<String> imageurls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7abKDKFzMvEHbOtLF-imIY-gHMa8P-VkSZQ&s',

      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStTLpYjn5kS-W_iXtqJWRtedfYuIrXsCRVMA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFIBXCuMFDJN_OfOUdNzxfW80WvYGYv6uWNg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFe8XJi0r1eAD99nf_dZdNI4MT88-eNvCb_g&s',
    ];
    final List<String> groupmessages = [
      'Welcome to the Home group! Feel free to share your thoughts and ideas.',
      'Thaliyil group is all about local news and events. Join the conversation!',
      'Kannur group members, let’s discuss our favorite places in the city.',
      'Friends group: Share your weekend plans and hangout spots!',
    ];

    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        final chatName = chatNames[index];
        final imageUrl = imageurls.isNotEmpty ? imageurls[index] : '';
        final message = groupmessages[index];
        return GestureDetector(
          onTap: () => Get.to(
            () =>
                ChatPage(name: chatName, message: message, imageUrl: imageUrl),
          ),
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            title: CustomText(text: chatName),
          ),
        );
      },
    );
  }
}
