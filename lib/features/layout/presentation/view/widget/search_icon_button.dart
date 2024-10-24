import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.blueColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: CustomIconButton(
          icon: Icons.search,
          onPressed: () {},
          color: AppColors.primaryColor,
        ));
  }
}
