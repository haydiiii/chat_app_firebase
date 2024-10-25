import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_list_tile.dart';
import 'package:chat_app_firebase/features/chats/presentation/view/widget/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                pushto(context, const ChatScreen());
              },
              child: CustomListTile(
                imageUrl: ImageAssets.user, // رابط الصورة
                name: 'Haidi Khattab',
                message: 'Hello haidi , how are you ?!',
                time: '19:38',
                icon: Icons.volume_mute_rounded, // أيقونة الرسائل المقروءة
                numOfMessages: '4', // عدد الرسائل
              ),
            );
          }),
      Positioned(
          bottom: 15,
          right: 15,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            child: const Icon(
              Icons.message,
            ),
          ))
    ]);
  }
}
