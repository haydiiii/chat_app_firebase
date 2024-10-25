import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CustomIconButton(
        onPressed: () {
          pushto(context, const BottomNavBar());
        },
        color: AppColors.primaryColor,
        icon: Icons.arrow_back_ios,
      ),
      title: Text(
        'Profile',
        style: titleText(),
      ),
    );
  }
}
