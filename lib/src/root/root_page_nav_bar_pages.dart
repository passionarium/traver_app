import 'package:flutter/material.dart';

import '../core/presentation/widgets/components/bottom_navigation_bar.dart';
import '../feature/home/presentation/pages/home_page.dart';

class RootPageBottomNavBarPages extends StatefulWidget {
  const RootPageBottomNavBarPages({final Key? key}) : super(key: key);

  @override
  State<RootPageBottomNavBarPages> createState() =>
      RootPageBottomNavBarPagesState();
}

class RootPageBottomNavBarPagesState extends State<RootPageBottomNavBarPages> {
  // default index
  int currentIndex = TraverBottomNavigationBarKey.values
      .indexOf(TraverBottomNavigationBarKey.home);

  void setItem(final TraverBottomNavigationBarKey key) {
    setState(() {
      currentIndex = TraverBottomNavigationBarKey.values.indexOf(key);
    });
  }

  @override
  Widget build(final BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: [
        const HomePage(),
        // MyTripPage(),
        // WishListPage(),
        // ProfilePage(),
        // ProfilePage(),
        // GoalPage(
        //   isRootpage: true,
        // )
      ],
    );
  }
}
