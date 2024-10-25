import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_list_tile.dart';
import 'package:chat_app_firebase/features/status/presentation/view/widget/text_updates.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(children: [
          CustomListTile(
            imageUrl: ImageAssets.user2,
            name: 'My Status',
            message: 'Tap to add status update',
          ),
          Positioned(
            right: 320,
            bottom: 15,
            child: InkWell(
              onTap: () {
                print('add status');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 2,
                  ),
                ),
                height: 20,
                width: 20,
                child: const Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                  size: 15,
                ),
              ),
            ),
          )
        ]),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextUpdates(text: 'Recent updates'),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomListTile(
                  imageUrl: ImageAssets.user2,
                  name: 'My Status',
                  message: 'Today, 12:00 PM',
                );
              }),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextUpdates(text: 'View updates'),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomListTile(
                  imageUrl: ImageAssets.user2,
                  name: 'My Status',
                  message: 'Today, 12:00 PM',
                );
              }),
        ),
      ],
    );
  }
}
