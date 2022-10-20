import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TraverListDestination extends StatelessWidget {
  final String image;
  final Widget icon;
  final String title;
  final String place;
  final String country;
  final double rating;
  final bool isFavorite;

  const TraverListDestination(
      {required this.image,
      required this.icon,
      required this.title,
      required this.place,
      required this.country,
      required this.rating,
      required this.isFavorite,
      final Key? key})
      : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return ListView.builder(
      itemBuilder: (final BuildContext context, final int index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Image.asset(image),
              Positioned(child: isFavorite == true ? icon : icon),
              Positioned(
                  bottom: 18,
                  child: Column(
                    children: [
                      Text(title),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          icon,
                          Text('$place, $country'),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RatingBarIndicator(
                        rating: rating,
                        itemBuilder: (final context, final index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 50.0,
                        direction: Axis.vertical,
                      )
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
