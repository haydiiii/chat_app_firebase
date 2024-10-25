import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class PopupmenuButton extends StatelessWidget {
  const PopupmenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.blueColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: PopupMenuButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            iconColor: AppColors.primaryColor,
            offset: const Offset(0, 30),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  height: 35,
                  child: Text(
                    'New Group',
                    style: bodyText(),
                  ),
                  onTap: () {},
                ),
                PopupMenuItem(
                  height: 35,
                  child: Text(
                    'Profile',
                    style: bodyText(),
                  ),
                  onTap: () {
                    pushto(context, const ProfileView());
                  },
                ),
                PopupMenuItem(
                  height: 35,
                  child: Text(
                    'Log Out',
                    style: bodyText(),
                  ),
                  onTap: () {},
                ),
              ];
            }));
  }
}
// CustomIconButton(
//               icon: Icons.more_vert,
//               onPressed: () {},
//               color: AppColors.primaryColor,
//             )
