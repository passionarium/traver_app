import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TraverListPackage extends StatelessWidget {
  final List<TraverListPackageItem> items;

  const TraverListPackage({
    required this.items,
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return Container();
  }
}

class TraverListPackageItem extends StatelessWidget {
  final String? image;
  final String title = 'Title';
  final Widget? icon;
  const TraverListPackageItem({
    final Key? key,
    this.image,
    this.icon,
  }) : super(key: key);

  final double price = 0.00;
  final double rating = 0;
  final String description = '';

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(image!),
          const SizedBox(
            width: 14,
          ),
          Column(
            children: [
              Row(
                children: [Text(title), icon ?? const Icon(Icons.favorite)],
              ),
              Text(price.toString()),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: rating,
                    itemBuilder: (final context, final index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 50.0,
                    direction: Axis.horizontal,
                  ),
                  Text(rating.toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(maxLines: 2, description)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
