import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String? name;
  final String? message;
  final String? time;
  final IconData? icon;
  final String? numOfMessages;
  final double? sizeOfIcon;
  final Function()? onPressedIcon;

  const CustomListTile({
    super.key,
    required this.imageUrl,
    this.name,
    this.message,
    this.time,
    this.icon,
    this.numOfMessages,
    this.sizeOfIcon,
    this.onPressedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
        radius: 30,
      ),
      title: Text(
        name ?? 'No name',
        style: bodyText(color: AppColors.blackColor),
      ),
      subtitle: Text(message ?? 'No message', style: smallText()),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time ?? '',
            style: hashText(),
          ),
          const Gap(4),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: sizeOfIcon ?? 16,
                  onPressed: onPressedIcon,
                  icon: Icon(icon),
                ),
                const Gap(5),
                if (numOfMessages != null && numOfMessages!.isNotEmpty)
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      numOfMessages ?? '',
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
