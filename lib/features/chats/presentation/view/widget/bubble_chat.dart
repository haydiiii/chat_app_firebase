import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BubbleChat extends StatelessWidget {
  final bool isSentByMe = false;
  const BubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding:  EdgeInsets.all(10.r),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Align(
            alignment:
                isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin:  EdgeInsets.symmetric(vertical: 5.r),
              padding:  EdgeInsets.all(10.r),
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
