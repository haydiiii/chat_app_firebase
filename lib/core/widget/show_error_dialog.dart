import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';

showErrorDialog({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), backgroundColor: AppColors.primaryColor),
  );
}
