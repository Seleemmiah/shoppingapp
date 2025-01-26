import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          //padding: EdgeInsets.symmetric(vertical: 20),
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 25,
          gap: 5,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            // GButton(
            //   icon: Icons.search,
            //   text: 'Search',
            // ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
            // GButton(
            //   icon: Icons.person,
            //   text: 'Profile',
            // ),
          ]),
    );
  }
}
