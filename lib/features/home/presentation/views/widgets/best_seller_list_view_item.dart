import 'package:bookly_mvvm/core/utils/app_assets.dart';
import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellersItem extends StatelessWidget {
  const BestSellersItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: GestureDetector(
        onTap: () {
          context.push(AppRouter.kBookDetailsScreen);

        },
        child: Card(
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: AppConstants.ratio,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    AppAssets.testImage,
                  ),
                ),
              ),
                Expanded(
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'book name $index',
                        style: FontsStyles.title24.copyWith(fontFamily: AppFonts.mainFont),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                      const Text(
                        'book authors',
                        style: FontsStyles.authors16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          Text(
                            '19.99 €',
                            style: FontsStyles.price20,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                          ),
                          Spacer(),
                          Rating(),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

