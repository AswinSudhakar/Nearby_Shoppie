// import 'package:flutter/material.dart';
// import 'package:nearby_shoppiee/core/widgets/text.dart';

// class ChatPage extends StatelessWidget {
//   const ChatPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: CustomText(text: 'Chat with us', fontSize: 25),

//         centerTitle: true,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 SizedBox(height: 500),
//                 Card(
//                   color: Colors.greenAccent,
//                   elevation: 10,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CustomText(text: '''The Delivery isn't good'''),
//                   ),
//                 ),
//                 Card(
//                   color: Colors.greenAccent,
//                   elevation: 10,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CustomText(text: '''The Delivery isn't good'''),
//                   ),
//                 ),
//                 Card(
//                   color: Colors.greenAccent,
//                   elevation: 10,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CustomText(text: 'The Delivery is late '),
//                   ),
//                 ),
//                 SizedBox(height: 30),

//                 Card(
//                   elevation: 10,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       height: 40,
//                       child: Row(
//                         children: [
//                           TextField(),
//                           Row(
//                             children: [
//                               Icon(Icons.video_call),
//                               SizedBox(width: 10),
//                               Icon(Icons.photo_album),
//                               SizedBox(width: 10),
//                               Icon(Icons.arrow_right_alt_rounded),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Chat with us', fontSize: 25),
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
                    message: "The Delivery isn't good",
                    color: Colors.greenAccent,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    message: "The Delivery isn't good",
                    color: Colors.greenAccent,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    message: "The Delivery is late",
                    color: Colors.greenAccent,
                  ),
                ),
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
