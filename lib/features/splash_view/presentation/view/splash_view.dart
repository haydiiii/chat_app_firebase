import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/services/local_storage.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/login_view.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/bottom_nav_bar.dart';
import 'package:chat_app_firebase/features/splash_view/presentation/view/widgets/splash_body_widget.dart';
import 'package:flutter/material.dart';

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
      final token = AppLocalStorage.getCachData(key: AppLocalStorage.token);
      if (token != null && token.isNotEmpty) {
        pushWithReplacement(context, const BottomNavBar());
      } else {
        pushWithReplacement(context, const LoginView());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashBodyWidget());
  }
}
