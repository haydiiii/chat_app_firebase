import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';

class ChatPopupMenue extends StatelessWidget {
  const ChatPopupMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        iconColor: AppColors.primaryColor,
        offset: const Offset(0, 30),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              height: 35,
              child: Text(
                'View Contact',
                style: bodyText(),
              ),
              onTap: () {},
            ),
            PopupMenuItem(
              height: 35,
              child: Text(
                'Media, links, and docs',
                style: bodyText(),
              ),
              onTap: () {},
            ),
            PopupMenuItem(
              height: 35,
              child: Text(
                'Search',
                style: bodyText(),
              ),
              onTap: () {},
            ),
          ];
        });
  }
}
// CustomIconButton(
//               icon: Icons.more_vert,
//               onPressed: () {},
//               color: AppColors.primaryColor,
//             )
