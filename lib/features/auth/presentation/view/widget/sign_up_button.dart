import 'package:chat_app_firebase/core/widget/custom_button.dart';
import 'package:chat_app_firebase/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
   final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
   const SignUpButton({super.key, required this.formKey, required this.emailController, required this.passwordController, required this.nameController, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomElvButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
context.read<AuthCubit>().signUp(
  email: emailController.text,
  password: passwordController.text,
  name: nameController.text,
  phone: phoneController.text
 
);
        }
      },
      text: 'Sign Up',
      width: 490.w,
      height: 50.h,
    );
  }
}
