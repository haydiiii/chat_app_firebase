import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    );
  }
}
