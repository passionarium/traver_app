import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../style/typography.dart';

class TraverGridCategory extends StatelessWidget {
  final List<TraverCategoryItem>? items;
  const TraverGridCategory({super.key, this.items});

  @override
  Widget build(final BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: items!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (final context, final int index) => TraverCategoryItem(
          image: items![index].image,
          title: items![index].title,
        ),
      ),
    );
  }
}

class TraverCategoryItem extends StatefulWidget {
  const TraverCategoryItem({
    required this.image,
    required this.title,
    final Key? key,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  State<TraverCategoryItem> createState() => _TraverCategoryItemState();
}

class _TraverCategoryItemState extends State<TraverCategoryItem> {
  bool isSelected = false;
  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(color: TraverColors.successDefault, width: 2)
              : Border.all(color: TraverColors.blackLight300, width: 1),
        ),
        padding: const EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            isSelected
                ? const Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.check_circle,
                      color: TraverColors.successDefault,
                    ),
                  )
                : const SizedBox.shrink(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.image,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.title,
                  style: TraverTypography.BodyText200Regular(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
