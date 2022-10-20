import 'package:flutter/material.dart';
import '../../../../style/colors.dart';

class TraverPageIndicator extends StatelessWidget {
  final ValueNotifier<int> pageNotifier;

  /// Must be greater than 1
  final int pageCount;
  const TraverPageIndicator({
    required this.pageNotifier,
    required this.pageCount,
    final Key? key,
  })  : assert(pageCount > 1, 'Page count must be larger than 1!'),
        super(key: key);

  @override
  Widget build(final BuildContext context) {
    const _dotSize = 100.0;
    const _gapSize = 10.0;

    return ValueListenableBuilder<int>(
      valueListenable: pageNotifier,
      builder: (final _, final val, final __) {
        return SizedBox(
          width: _dotSize + pageCount * (_gapSize + _dotSize),
          child: Stack(
            children: [
              Row(
                children: [
                  const _IndicatorDot(),
                  for (int i = 0; i < pageCount; ++i)
                    const Padding(
                      padding: EdgeInsets.only(left: _gapSize),
                      child: _IndicatorDot(),
                    ),
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 150,
                ),
                left: val * (_gapSize + _dotSize),
                child: const _SelectedIndicator(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _IndicatorDot extends StatelessWidget {
  const _IndicatorDot({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 2,
      color: Colors.white.withOpacity(0.2),
    );
  }
}

class _SelectedIndicator extends StatelessWidget {
  const _SelectedIndicator({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 2,
      color: TraverColors.white,
    );
  }
}
