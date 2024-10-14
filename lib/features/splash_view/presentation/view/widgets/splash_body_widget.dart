import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constants/images/image_assets.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          ' The Best Chat App in the world',
          style: bodyText(),
        )
      ],
    ),
          ),
        );
  }
}
