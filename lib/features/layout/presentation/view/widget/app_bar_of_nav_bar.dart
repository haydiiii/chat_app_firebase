import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/widget/popup_menue_button.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/widget/search_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppBarOfNavBar extends StatelessWidget {
  const AppBarOfNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'WhatsUp',
          style: titleText(color: AppColors.blackColor),
        ),
        const Spacer(),
       const SearchIconButton(),
        const Gap(15),
        const PopupmenuButton(),
       
      ],
    );
  }
}
