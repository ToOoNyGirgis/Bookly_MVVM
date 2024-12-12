import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellersItem extends StatelessWidget {
  const BestSellersItem({super.key, required this.books});
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: GestureDetector(
        onTap: () {
          context.push(AppRouter.kBookDetailsScreen , extra: books);

        },
        child: Card(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: AppConstants.ratio,
                  child: CachedNetworkImage(
                    imageUrl: books.volumeInfo.imageLinks!.thumbnail,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(color: Colors.grey,),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
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
                        books.volumeInfo.title!,
                        style: FontsStyles.title20.copyWith(fontFamily: AppFonts.mainFont),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                       Text(
                        books.volumeInfo.authors![0],
                        style: FontsStyles.authors16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                      ),
                      const Spacer(),
                       Row(
                        children: [
                          const Text(
                            'Free',
                            style: FontsStyles.price20,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                          ),
                          const Spacer(),
                          Rating(rating:books.volumeInfo.averageRating?.toStringAsFixed(1) ?? '0.0' ,count:books.volumeInfo.ratingsCount??0 ,),
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

