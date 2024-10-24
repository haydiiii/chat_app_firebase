import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextFieldProfile extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const TextFieldProfile({super.key, this.controller, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
