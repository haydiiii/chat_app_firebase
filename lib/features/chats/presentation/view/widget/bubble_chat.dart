import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BubbleChat extends StatelessWidget {
  final bool isSentByMe = false;
  const BubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Align(
            alignment:
                isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isSentByMe ? AppColors.greenShadow : AppColors.greyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: isSentByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, how are you?',
                  ),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.start,
                    '10:00 AM',
                    style: smallText(fontsize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
