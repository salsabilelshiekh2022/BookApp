import 'package:book_app/features/home/presentation/views/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 225,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 12),
              child: FeatureItem(),
            );
          },
          itemCount: 9,
        ),
      ),
    );
  }
}
