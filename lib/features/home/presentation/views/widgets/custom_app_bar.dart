import 'package:bookly_mvvm/core/utils/app_assets.dart';
import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppAssets.logo,
            height: 30,
          ),
          IconButton(
              onPressed: () {
                context.push(AppRouter.kSearchScreen);

              },
              icon: const Icon(
                Icons.search,
                size: 35,
              ))
        ],
      ),
    );
  }
}
