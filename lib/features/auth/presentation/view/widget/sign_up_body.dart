import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/login_view.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/email_text_ffield.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/login_here.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/logo_widget.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/name_text_ffield.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/password_txt_ffield.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/phone_text_ffield.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/sign_up_button.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/text_title_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

bool isVisible = false;
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const LogoWidget(),
                const TextTitleSignUp(),
                const Gap(20),
                NameTextFfield(
                  nameController: nameController,
                ),
                const Gap(20),
                EmailTextFfield(
                  emailController: emailController,
                ),
                const Gap(15),
                PhoneTextFfield(
                  phoneController: phoneController,
                ),
                const Gap(15),
                PasswordTextFfield(
                  passwordController: passwordController,
                  isVisible: isVisible,
                  toggleVisibility: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                const Gap(15),
                const SignUpButton(),
                const Gap(10),
                Loginhere(
                  onPressed: () {
                    pushWithReplacement(context, const LoginView());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
