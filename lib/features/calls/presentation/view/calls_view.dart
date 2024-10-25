import 'package:chat_app_firebase/features/calls/presentation/view/widget/calls_body.dart';
import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CallsBody(),
    );
  }
}
