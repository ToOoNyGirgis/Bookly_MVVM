import 'package:bookly_mvvm/core/utils/service_locator.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/book_details_screen.dart';
import 'package:bookly_mvvm/features/home/presentation/views/home_screen.dart';
import 'package:bookly_mvvm/features/search/presentation/views/search_screen.dart';
import 'package:bookly_mvvm/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsScreen(
              books: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
    ],
  );

  static const String kHomeScreen = '/homeScreen';
  static const String kSearchScreen = '/searchScreen';
  static const String kBookDetailsScreen = '/bookDetailsScreen';
}
