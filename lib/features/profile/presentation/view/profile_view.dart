import 'package:chat_app_firebase/features/profile/presentation/view/widget/profile_appbar.dart';
import 'package:chat_app_firebase/features/profile/presentation/view/widget/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: ProfileAppBar()),
        body: ProfileBody());
  }
}
