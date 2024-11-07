// git
import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/widget/custom_button.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {
        pushAndremoveUntill(context, const BottomNavBar());
      },
      text: 'Login',
      width: 490.w,
      height: 50.h,
    );
  }
}
