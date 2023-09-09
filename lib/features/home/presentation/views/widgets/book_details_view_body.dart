import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'book_details_app_bar.dart';
import 'book_rating.dart';
import 'feature_item.dart';
import 'similar_book_list.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(
            height: 26,
          ),
          const FeatureItem(
            width: 162,
            height: 220,
            radius: 16,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 8,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 38,
          ),
          const BookActions(),
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SimilarBookList(),
        ],
      ),
    );
  }
}
