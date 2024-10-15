import 'package:chat_app_firebase/core/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, this.index});
  final int? index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            activeIcon: Icon(
              Icons.chat,
              color: AppColors.primaryColor,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            activeIcon: Icon(Icons.lightbulb),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: AppColors.primaryColor,
            ),
            activeIcon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
