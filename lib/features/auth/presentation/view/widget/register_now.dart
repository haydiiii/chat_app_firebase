import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/core/widget/custom_text_button.dart';
import 'package:flutter/material.dart';

class RegisterNow extends StatelessWidget {
  const RegisterNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Don\'t have an account?',
          style: smallText(color: AppColors.blackColor)),
      CustomTextButton(
        text: 'RegisterNow',
        onPressed: () {},
      )
    ]);
  }
}
