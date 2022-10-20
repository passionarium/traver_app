import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/base_page.dart';
import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../core/presentation/widgets/components/grid_category.dart';
import '../../../../style/typography.dart';

List<TraverCategoryItem> categoryItems = [
  TraverCategoryItem(
    title: S.current.beach,
    image: 'assets/images/category/beach.png',
  ),
  TraverCategoryItem(
    title: S.current.camping,
    image: 'assets/images/category/camping.png',
  ),
  TraverCategoryItem(
    title: S.current.fishing,
    image: 'assets/images/category/fishing.png',
  ),
  TraverCategoryItem(
    title: S.current.mountain,
    image: 'assets/images/category/mountain.png',
  ),
  TraverCategoryItem(
    title: S.current.ocean,
    image: 'assets/images/category/ocean.png',
  ),
  TraverCategoryItem(
    title: S.current.forest,
    image: 'assets/images/category/forest.png',
  ),
];

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(final BuildContext context) {
    return TraverBasePage(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Text(
              S.current.where_is_favorite_place,
              style: TraverTypography.headLine600(),
            ),
            const SizedBox(
              height: 30,
            ),
            TraverGridCategory(
              items: categoryItems,
            ),
            const SizedBox(
              height: 30,
            ),
            Positioned(
              bottom: 0,
              child: TraverPrimaryButton(
                size: ButtonSize.large,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (final context) => const ExplorePage()));
                },
                text: S.current.next,
                isDisabled: false,
                isIconOnly: false,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
