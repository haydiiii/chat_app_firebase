import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/login_view.dart';
import 'package:chat_app_firebase/features/splash_view/presentation/view/widgets/splash_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      pushWithReplacement(context, const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashBodyWidget());
  }
}
