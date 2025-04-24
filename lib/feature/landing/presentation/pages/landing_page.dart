import 'package:flutter/material.dart';

import '../widgets/landing_bottom_nav.dart';
import 'landing_home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LandingBottomNav(
        onTap: onTap,
        currentIndex: currentIndex,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          LandingHomePage(),
          Center(child: Text('Favs')),
          Center(child: Text('Schedule')),
          Center(child: Text('Profile')),
        ],
      ),
    );
  }
}