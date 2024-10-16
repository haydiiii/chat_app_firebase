import 'package:chat_app_firebase/core/widget/custm_txt_formfield.dart';
import 'package:flutter/material.dart';

class PhoneTextFfield extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneTextFfield({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: 'Haidi Khattab',
      label: 'Phone number',
      prefixIcon: Icons.phone_android_outlined,
      keyboardType: TextInputType.phone,
      obscureText: false,
      validator: (value) =>
          (value!.isEmpty) ? 'Please Enter Your phone number' : null,
      onPressed: () {},
    );
  }
}
