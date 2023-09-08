import 'package:book_app/features/home/presentation/views/widgets/feature_list.dart';
import 'package:book_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeAppBar(),
              FeatureList(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, top: 50, bottom: 20),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerList(),
        )
      ],
    );
  }
}
