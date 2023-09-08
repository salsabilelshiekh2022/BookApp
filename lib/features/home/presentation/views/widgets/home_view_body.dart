import 'package:book_app/features/home/presentation/views/widgets/feature_list.dart';
import 'package:book_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeAppBar(),
        FeatureList(),
      ],
    );
  }
}
