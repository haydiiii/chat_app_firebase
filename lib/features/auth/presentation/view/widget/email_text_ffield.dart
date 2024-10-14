import 'package:chat_app_firebase/core/widget/custm_txt_formfield.dart';
import 'package:flutter/material.dart';

class EmailTextFfield extends StatelessWidget {
   final TextEditingController emailController ;

  EmailTextFfield({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: 'example@ex.com',
      label: 'Email',
      prefixIcon: Icons.email,
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      validator: (value)=> (value!.isEmpty) ? 'Please Enter Email' : null,
      onPressed: () {},
      
    );
  }
}
