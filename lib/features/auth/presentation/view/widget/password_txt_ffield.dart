import 'package:chat_app_firebase/core/widget/custm_txt_formfield.dart';
import 'package:flutter/material.dart';

class PasswordTextFfield extends StatelessWidget {
  final bool isVisible;
  final VoidCallback toggleVisibility;
  final TextEditingController passwordController;

  PasswordTextFfield(
      {super.key, required this.isVisible, required this.toggleVisibility, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: '**********',
      label: 'Password',
      prefixIcon: Icons.lock,
      suffixIcon:
          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
      keyboardType: TextInputType.number,
      obscureText: !isVisible,
      validator: (value) => (value!.isEmpty) ? 'Please Enter Password' : null,
      onPressed: toggleVisibility,
    );
  }
}
