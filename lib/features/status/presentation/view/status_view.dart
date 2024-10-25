import 'package:chat_app_firebase/features/status/presentation/view/widget/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  StatusBody(),
    );
  }
}
