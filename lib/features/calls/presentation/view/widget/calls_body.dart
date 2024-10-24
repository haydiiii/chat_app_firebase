import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/widget/custom_list_tile.dart';
import 'package:chat_app_firebase/features/status/presentation/view/widget/text_updates.dart';
import 'package:flutter/material.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextUpdates(
            text: 'Recent',
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomListTile(
                  imageUrl: ImageAssets.user2,
                  name: 'My Status',
                  message: 'Today, 12:00 PM',
                  icon: Icons.phone,
                  sizeOfIcon: 25,
                  onPressedIcon: () {
                    
                  },
                );
              }),
        ),
      ],
    );
  }
}
