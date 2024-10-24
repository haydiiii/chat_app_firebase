import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';

class TextUpdates extends StatelessWidget {
  final String text;
  const TextUpdates({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: smallText(),

    );
  }
}