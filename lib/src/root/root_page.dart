import 'package:flutter/material.dart';

import '../core/presentation/widgets/components/bottom_navigation_bar.dart';
import 'root_page_nav_bar_pages.dart';

class RootPage extends StatefulWidget {
  const RootPage({
    final Key? key,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final GlobalKey<RootPageBottomNavBarPagesState> pagesKey =
      GlobalKey<RootPageBottomNavBarPagesState>();
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child: Stack(
            children: [
              RootPageBottomNavBarPages(key: pagesKey),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MarkBottomNavigationBar(
                    onSelected: (final key) {
                      pagesKey.currentState?.setItem(key);
                    },
                    items: [
                      TraverBottomNavigationBarItem(
                        key: TraverBottomNavigationBarKey.home,
                        mustBeAuthorized: false,
                        icon: Icons.home,
                      ),
                      TraverBottomNavigationBarItem(
                        key: TraverBottomNavigationBarKey.myTrip,
                        mustBeAuthorized: false,
                        icon: Icons.send,
                      ),
                      TraverBottomNavigationBarItem(
                        key: TraverBottomNavigationBarKey.wishList,
                        mustBeAuthorized: false,
                        icon: Icons.favorite,
                      ),
                      TraverBottomNavigationBarItem(
                        key: TraverBottomNavigationBarKey.profile,
                        mustBeAuthorized: false,
                        icon: Icons.person,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
