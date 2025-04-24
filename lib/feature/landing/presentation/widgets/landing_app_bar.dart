import 'package:flutter/material.dart';

import '../../../../configs/constants/app_colors.dart';

class LandingAppBar extends StatelessWidget {
  const LandingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        gradient: AppColors.defaultAppBar,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 50),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          _searchBarLocation(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _searchBarLocation() {
    return InkWell(
      onTap: () {
        // fucntion to open google maps or location
      },
      child: Container(
        width: 361,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10),
              Text('Search for location'),
            ],
          ),
        ),
      ),
    );
  }
}
