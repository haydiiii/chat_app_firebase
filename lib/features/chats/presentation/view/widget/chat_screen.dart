import 'package:chat_app_firebase/features/chats/presentation/view/widget/app_bar_chat_screen.dart';
import 'package:chat_app_firebase/features/chats/presentation/view/widget/bubble_chat.dart';
import 'package:chat_app_firebase/features/chats/presentation/view/widget/new_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String userId;
  const ChatScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarChatScreen(),
      ),
      body: Column(
        children: [
          Expanded(child: BubbleChat()),
          NewMessage(),
        ],
      ),
    );
  }
}
