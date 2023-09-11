import 'package:book_app/core/utils/router/router.dart';
import 'package:book_app/core/utils/router/routes.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                  homeRepo: getIt.get<HomeRepoImpl>(),
                )),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                  homeRepo: getIt.get<HomeRepoImpl>(),
                ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        onGenerateRoute: onGenerate,
        initialRoute: AppRoutes.splashPageRoute,
      ),
    );
  }
}
