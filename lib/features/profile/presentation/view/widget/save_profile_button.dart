import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.save, color: Colors.white),
            const Gap(5),
            Text(
              'Save Profile',
              style: bodyText(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
