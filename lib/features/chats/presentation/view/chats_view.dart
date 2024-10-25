import 'package:chat_app_firebase/features/chats/presentation/view/widget/chat_body.dart';
import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatBody(),
    );
  }
}
