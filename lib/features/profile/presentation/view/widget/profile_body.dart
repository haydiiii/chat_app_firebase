import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/features/profile/presentation/view/widget/profile_image.dart';
import 'package:chat_app_firebase/features/profile/presentation/view/widget/save_profile_button.dart';
import 'package:chat_app_firebase/features/profile/presentation/view/widget/text_field_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: ProfileImage()),
          const Gap(20),
          const Divider(),
          const Gap(20),
          Text(
            'Name',
            style: bodyText(color: AppColors.blackColor),
            textAlign: TextAlign.start,
          ),
          const Gap(20),
          const TextFieldProfile(),
          const Gap(20),
          Text(
            'Phone',
            style: bodyText(color: AppColors.blackColor),
            textAlign: TextAlign.start,
          ),
          const Gap(20),
          const TextFieldProfile(),
          const Gap(20),
          const SaveProfileButton()
        ],
      ),
    );
  }
}

