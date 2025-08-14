import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/chat/view/tab/group_chat.dart';
import 'package:nearby_shoppiee/views/chat/view/tab/inbox.dart';
import 'package:nearby_shoppiee/views/chat/view/tab/shops_chat.dart';
import 'package:nearby_shoppiee/views/chat/view/tab/spam_chat.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: 'Chats',
            fontSize: 25,
            fontFamily: 'Crimson-Bold',
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(child: CustomText(text: 'Inbox')),
                Tab(child: CustomText(text: 'Shops')),
                Tab(child: CustomText(text: 'Groups')),
                Tab(child: CustomText(text: 'Spam')),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [Inbox(), ShopsChat(), GrouCphat(), SpamChat()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
