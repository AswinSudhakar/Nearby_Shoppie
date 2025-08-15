import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class ChatPage extends StatelessWidget {
  final String name;
  final String message;
  final String imageUrl;
  const ChatPage({
    super.key,
    required this.name,
    required this.message,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageUrl ??
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf1fiSQO7JfDw0uv1Ae_Ye-Bo9nhGNg27dwg&s',
                    ),
                  ),
                  const SizedBox(width: 10),
                  CustomText(
                    text: name,
                    fontSize: 20,
                    fontFamily: 'Crimson-Bold',
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
                ],
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Chat Messages
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    message: message,
                    color: Colors.greenAccent,
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: ChatBubble(
                //     message: "The Delivery isn't good",
                //     color: Colors.greenAccent,
                //   ),
                // ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: ChatBubble(
                //     message: "The Delivery is late",
                //     color: Colors.greenAccent,
                //   ),
                // ),
              ],
            ),
          ),

          // Chat Input
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.video_call),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.photo_album),
                  onPressed: () {},
                ),
                IconButton(icon: const Icon(Icons.send), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final Color color;

  const ChatBubble({
    super.key,
    required this.message,
    this.color = Colors.greenAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomText(text: message),
      ),
    );
  }
}
