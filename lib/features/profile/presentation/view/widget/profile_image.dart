import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          borderRadius: BorderRadius.circular(50.r),
          child: Image.asset(
            ImageAssets.user2,
            width: 100.w,
            height: 100.h,
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
