import 'package:flutter/material.dart';

import 'feature_item.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12),
            child: FeatureItem(
              width: 78,
              height: 124,
              radius: 16,
            ),
          );
        },
        itemCount: 9,
      ),
    );
  }
}
