import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// static const TextStyle title = TextStyle(
//   fontSize: 24,
//   fontWeight: FontWeight.bold,
//   color: AppColors.primaryColor,
// );

TextStyle titleText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
  GoogleFonts? font,
}) {
  return TextStyle(
    fontSize: fontsize ?? 24,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? AppColors.primaryColor,
  );
}

TextStyle bodyText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 16,
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color ?? AppColors.blackColor,
  );
}

TextStyle hashText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 12,
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color ?? Colors.grey,
  );
}

TextStyle smallText({
  Color? color,
  double? fontsize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontsize ?? 14,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.blueGrey,
  );
}
