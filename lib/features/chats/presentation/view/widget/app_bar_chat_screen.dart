import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:chat_app_firebase/features/chats/presentation/view/widget/chat_popupmenue_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppBarChatScreen extends StatelessWidget {
  const AppBarChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              width: 50,
              height: 50,
              ImageAssets.user2,
            ),
          ),
          const Gap(5),
          Text(
            'My Name',
            style: bodyText(),
          ),
        ],
      ),
      actions: [
        CustomIconButton(
          icon: Icons.video_call,
          color: AppColors.primaryColor,
          onPressed: () {},
        ),
        CustomIconButton(
          icon: Icons.call,
          color: AppColors.primaryColor,
          onPressed: () {},
        ),
        const ChatPopupMenue()
      ],
    );
  }
}
