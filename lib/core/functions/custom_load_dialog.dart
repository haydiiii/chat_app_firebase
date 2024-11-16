import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

showLoadingDialog(BuildContext context) {
  showDialog(
    barrierColor: AppColors.greenShadow,
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Lottie.asset('assets/loading.json'),
      );
    },
  );
}
