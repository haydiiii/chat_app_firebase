// git
import 'package:chat_app_firebase/core/widget/custom_button.dart';
import 'package:chat_app_firebase/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<AuthCubit>().login(
                email: emailController.text,
                password: passwordController.text,
              );
        }
      },
      text: 'Login',
      width: 490.w,
      height: 50.h,
    );
  }
}
