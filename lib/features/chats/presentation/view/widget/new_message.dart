import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

TextEditingController messageController = TextEditingController();
void dispose() {
  messageController.dispose();
}

void sendMessage(BuildContext context) async {
  final enteredMessage = messageController.text.trim();
  if (enteredMessage.isEmpty) return;

  final User? user = FirebaseAuth.instance.currentUser;
  final userData =
      await FirebaseFirestore.instance.collection('users').doc(user!.uid).get();

  await FirebaseFirestore.instance.collection('chats').add({
    'messages': enteredMessage,
    'timeCreation': Timestamp.now(),
    'userId': user.uid,
    'userName': userData['name'],
  });

  FocusScope.of(context).unfocus();
  messageController.clear();
}


class _NewMessageState extends State<NewMessage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10.r),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                const Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
                const Gap(2),
                Expanded(
                  child: TextField(
                    controller: messageController,
                    autocorrect: true,
                    textCapitalization: TextCapitalization.sentences,
                    enableSuggestions: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Message...'),
                  ),
                ),
                CustomIconButton(
                  icon: Icons.camera_alt,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                CustomIconButton(
                  icon: Icons.attach_file,
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          )),
           CircleAvatar(
  backgroundColor: AppColors.primaryColor,
  child: CustomIconButton(
    icon: Icons.send,
    color: Colors.white,
    onPressed: () => sendMessage(context),
  ),
),

        ],
      ),
    );
  }
}
