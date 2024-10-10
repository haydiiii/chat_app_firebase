import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/login_view.dart';
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
      pushto(context, const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             ImageAssets.logo,
              width: 200,
              height: 100,
            ),
            const Gap(10),
            Text('WhatsApp', style: titleText()),
            const Gap(70),
            Text(
              ' The best Chat App in the world',
              style: bodyText(),
            )
          ],
        ),
      ),
    ));
  }
}
