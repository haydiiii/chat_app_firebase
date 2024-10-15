// import 'package:chat_app_firebase/core/functions/app_routing.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/signup_view.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/email_text_ffield.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/login_button.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/logo_widget.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/password_txt_ffield.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/register_now.dart';
// import 'package:chat_app_firebase/features/auth/presentation/view/widget/text_title_login.dart';
// import 'package:chat_app_firebase/features/layout/presentation/view/bottom_nav_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class LoginBody extends StatefulWidget {
//   const LoginBody({super.key});

//   @override
//   State<LoginBody> createState() => _LoginBodyState();
// }

// bool isVisible = false;
// TextEditingController passwordController = TextEditingController();
// TextEditingController emailController = TextEditingController();
// GlobalKey<FormState> formKey = GlobalKey<FormState>();

// class _LoginBodyState extends State<LoginBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const LogoWidget(),
//                 const TextTitleLogin(),
//                 const Gap(20),
//                 EmailTextFfield(
//                   emailController: emailController,
//                 ),
//                 const Gap(15),
//                 PasswordTextFfield(
//                   passwordController: passwordController,
//                   isVisible: isVisible,
//                   toggleVisibility: () {
//                     setState(() {
//                       isVisible = !isVisible;
//                     });
//                   },
//                 ),
//                 const Gap(15),
//                 LoginButton(
//                   onPressed: () {
//                     pushAndremoveUntill(context, const BottomNavBar());
//                   },
//                 ),
//                 const Gap(10),
//                 RegisterNow(
//                   onPressed: () {
//                     pushWithReplacement(context, const SignUpView());
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
