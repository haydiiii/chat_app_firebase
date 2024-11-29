import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter, child: Image.asset(ImageAssets.logo));
  }
}
