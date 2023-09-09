import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem(
      {super.key,
      required this.width,
      required this.height,
      required this.radius});

  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.testImage,
            ),
            fit: BoxFit.fill,
          )),
    );
  }
}
