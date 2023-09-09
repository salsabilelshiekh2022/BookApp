import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/router/routes.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, this.padding = 24});

  final double padding;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: padding),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.bookDetailsRoute);
          },
          child: SizedBox(
            width: 297,
            height: 105,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AssetsData.testImage,
                      height: 105,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Jungle Book',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: 'GT Sectra Fine',
                      ),
                    ),
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Rudyard Kipling',
                        style: Styles.textStyle14,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle16
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const BookRating(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
