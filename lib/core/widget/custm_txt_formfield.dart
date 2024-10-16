import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String label;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function()? onPressed;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool? enabled;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.label,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onPressed,
    this.enabled,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
          enabled: true,
          labelStyle: const TextStyle(color: AppColors.primaryColor),
          hintText: hintText,
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: onPressed, icon: Icon(suffixIcon))
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(26)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          )),
    );
  }
}
