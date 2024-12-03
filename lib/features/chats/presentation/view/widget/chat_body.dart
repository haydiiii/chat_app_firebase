import 'package:chat_app_firebase/core/constants/images/image_assets.dart';
import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:chat_app_firebase/core/widget/custom_list_tile.dart';
import 'package:chat_app_firebase/features/chats/presentation/view/widget/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});
  Future<Map<String, dynamic>?> fetchLastChat(String userId) async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('chats')
          .where('userId', isEqualTo: userId)
          .orderBy('timeCreation', descending: true)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        return querySnapshot.docs.first.data();
      }
    } catch (e) {
      debugPrint("Error fetching last chat for userId $userId: $e");
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong...'));
            }
            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return const Center(child: Text('No users found.'));
            }

            final users = snapshot.data!.docs;

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final userId = user.id;

                return FutureBuilder(
                    future: fetchLastChat(userId),
                    builder: (context, chatSnapshot) {
                      if (chatSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const ListTile(
                          title: Text('Loading...'),
                        );
                      }
                      if (chatSnapshot.hasError) {
                        return const ListTile(
                          title: Text('Error loading chat data'),
                        );
                      }
                      final lastChat = chatSnapshot.data;
                      return InkWell(
                        onTap: () {
                          pushto(context, ChatScreen(userId: user.id));
                        },
                        child: CustomListTile(
                          imageUrl: '',
                          name: user['name'],
                          message: lastChat != null
                              ? lastChat['message']
                              : 'No messages yet',
                          time: lastChat != null
                              ? DateFormat('hh:mm a').format(
                                  lastChat['timeCreation'].toDate(),
                                )
                              : '',
                              
                        ),
                      );
                    });
              },
            );
          },
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: FloatingActionButton(
            onPressed: () {
              // إضافة وظيفة الزر لإرسال رسالة جديدة
            },
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            child: const Icon(
              Icons.message,
            ),
          ),
        ),
      ],
    );
  }
}
