import 'package:book_app/core/utils/router/routes.dart';
import 'package:book_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/search/presentation/views/search_view.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homePageRoute:
      return CupertinoPageRoute(
          builder: (_) => const HomeView(), settings: settings);
    case AppRoutes.splashPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const SplashView(), settings: settings);
    case AppRoutes.bookDetailsRoute:
      return CupertinoPageRoute(
          builder: (_) => const BookDetailsView(), settings: settings);
    case AppRoutes.searchPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const SearchView(), settings: settings);

    default:
      return CupertinoPageRoute(
          builder: (_) => const SplashView(), settings: settings);
  }
}
