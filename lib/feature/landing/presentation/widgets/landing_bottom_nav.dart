import 'package:flutter/material.dart';
import 'package:interview/configs/constants/app_colors.dart';

class LandingBottomNav extends StatelessWidget {
  const LandingBottomNav({
    required this.onTap,
    required this.currentIndex,
    super.key,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.orange2,
      unselectedItemColor: AppColors.grey,
      unselectedLabelStyle: TextStyle(color: AppColors.grey),
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
