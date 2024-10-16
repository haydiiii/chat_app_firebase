import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';

class TextTitleSignUp extends StatelessWidget {
  const TextTitleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Register to New Account',
      style: titleText(
          color: AppColors.blackColor,
          fontWeight: FontWeight.w700,
          fontsize: 30,
          ),
    );
  }
}
