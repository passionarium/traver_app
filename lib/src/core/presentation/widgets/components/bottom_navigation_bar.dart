import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../style/typography.dart';

class MarkBottomNavigationBar extends StatefulWidget {
  final List<TraverBottomNavigationBarItem> items;
  final void Function(TraverBottomNavigationBarKey navNarKey) onSelected;

  const MarkBottomNavigationBar({
    required this.items,
    required this.onSelected,
    final Key? key,
  }) : super(key: key);

  @override
  State<MarkBottomNavigationBar> createState() =>
      _MarkBottomNavigationBarState();
}

class _MarkBottomNavigationBarState extends State<MarkBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  ValueNotifier<TraverBottomNavigationBarKey> currentKeyNotifier =
      ValueNotifier(TraverBottomNavigationBarKey.home);

  @override
  Widget build(final BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      ColoredBox(
        color: TraverColors.white,
        child: ValueListenableBuilder<TraverBottomNavigationBarKey>(
          valueListenable: currentKeyNotifier,
          builder: (final _, final currentKey, final __) {
            return SafeArea(
              top: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.from(
                  widget.items.map<dynamic>(
                    (final item) => GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          widget.onSelected(item.key);
                          setState(() {
                            currentKeyNotifier.value = item.key;
                          });
                        },
                        child: item.key == currentKeyNotifier.value
                            ? Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: TraverColors.blackDark700,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            item.icon,
                                            color: TraverColors.white,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            item.key.value,
                                            style: TraverTypography
                                                .BodyText100Regular(
                                                    color: TraverColors.white),
                                          )
                                        ],
                                      ),
                                    )),
                              )
                            : Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 8),
                                child: Row(
                                  children: [Icon(item.icon)],
                                ))),
                  ),
                ),
              ),
            );
          },
        ),
      )
    ]);
  }
}

class TraverBottomNavigationBarItem {
  final TraverBottomNavigationBarKey key;
  final IconData icon;
  final bool mustBeAuthorized;

  TraverBottomNavigationBarItem({
    required this.key,
    required this.icon,
    required this.mustBeAuthorized,
  });
}

enum TraverBottomNavigationBarKey {
  home('Home'),
  myTrip('My Trip'),
  wishList('Wishlist'),
  profile('Profile');

  final String value;

  const TraverBottomNavigationBarKey(this.value);
}
