import 'package:chat_app_firebase/core/widget/custm_txt_formfield.dart';
import 'package:flutter/material.dart';

class NameTextFfield extends StatelessWidget {
  final TextEditingController nameController;

  const NameTextFfield({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: 'Haidi Khattab',
      label: 'Name',
      prefixIcon: Icons.person,
      keyboardType: TextInputType.name,
      obscureText: false,
      validator: (value) {
        if ( value == null || value.isEmpty) {
          return 'Please Enter Your Name';
          
        }else{
          return null;
        }
      } ,
      onPressed: () {},
    );
  }
}
