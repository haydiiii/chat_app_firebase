import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            ImageAssets.user2,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: CustomIconButton(
            color: AppColors.primaryColor,
            icon: Icons.camera_alt_outlined,
          ),
        )
      ],
    );
  }
}
