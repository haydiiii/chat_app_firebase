import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.r),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding:  EdgeInsets.only(left: 10.r),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                const Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
                const Gap(2),
                const Expanded(
                  child: TextField(
                    autocorrect: true,
                    textCapitalization: TextCapitalization.sentences,
                    enableSuggestions: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Message...'),
                  ),
                ),
                CustomIconButton(
                  icon: Icons.camera_alt,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                CustomIconButton(
                  icon: Icons.attach_file,
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          )),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: CustomIconButton(
              icon: Icons.send,
              color: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
