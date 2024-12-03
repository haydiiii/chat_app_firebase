import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/theme/style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class BubbleChat extends StatelessWidget {
  final bool isSentByMe = false;
  const BubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chats')
          .orderBy('timeCreation', descending: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text('Something went wrong...'));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No messages found'));
        }
       // print("Loaded messages count: ${snapshot.data!.docs.length}");
        final loadedMessages = snapshot.data!.docs;
        final userId = FirebaseAuth.instance.currentUser!.uid;

        return ListView.builder(
          padding: EdgeInsets.all(10.r),
          itemCount: loadedMessages.length,
          itemBuilder: (context, index) {
            final isSentByMe = loadedMessages[index].get('userId') == userId;
            return Align(
              alignment:
                  isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.r),
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color:
                      isSentByMe ? AppColors.greenShadow : AppColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: isSentByMe
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Text(loadedMessages[index].get('messages')),
                    const Gap(5),
                    Text(
                      DateFormat('hh:mm a').format(
                        loadedMessages[index].get('timeCreation').toDate(),
                      ),
                      style: smallText(fontsize: 12),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
