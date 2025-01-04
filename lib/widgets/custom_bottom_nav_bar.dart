import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "হোম",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          label: "যোগাযোগ",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "নোটিফিকেশন",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "প্রোফাইল",
        ),
      ],
    );
  }
}