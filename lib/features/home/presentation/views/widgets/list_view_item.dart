import 'package:bookly_mvvm/core/utils/app_assets.dart';
import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal:  5),
      child: GestureDetector(
        onTap: () {
          context.push(AppRouter.kBookDetailsScreen);
        },
        child: AspectRatio(
          aspectRatio: AppConstants.ratio,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              AppAssets.testImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
