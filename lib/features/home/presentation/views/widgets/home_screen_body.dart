import 'package:bookly_mvvm/core/utils/app_assets.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 20),
                HorizontalListView(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding16),
                  child: Text(
                    'Best Seller',
                    textAlign: TextAlign.start,
                    style: FontsStyles.title24,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BestSellersListView(),
            ),
          )
        ],
      ),
    );
  }
}


