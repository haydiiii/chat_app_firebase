import 'package:chat_app_firebase/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {},
      text: 'Login',
      width: 490,
      height: 50,
    );
  }
}
