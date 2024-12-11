import 'package:bookly_mvvm/features/home/presentation/views/book_details_screen.dart';
import 'package:bookly_mvvm/features/home/presentation/views/home_screen.dart';
import 'package:bookly_mvvm/features/search/presentation/views/search_screen.dart';
import 'package:bookly_mvvm/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
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
          return const BookDetailsScreen();
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



 static const String kHomeScreen ='/homeScreen';
 static const String kSearchScreen ='/searchScreen';
 static const String kBookDetailsScreen ='/bookDetailsScreen';

}