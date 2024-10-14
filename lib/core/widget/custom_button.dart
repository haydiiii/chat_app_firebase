import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';

class CustomElvButton extends StatelessWidget {
  const CustomElvButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    this.height,
    this.child, this.shape,
  });
  final Function() onPressed;
  final String text;
  final double width;
  final double? height;
  final Widget? child;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Text(
          text,
          style: bodyText(color: AppColors.blackColor),
        ),
      ),
    );
  }
}