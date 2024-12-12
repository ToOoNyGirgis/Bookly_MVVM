import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key, required this.books,
  });

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal:  5),
      child: GestureDetector(
        onTap: () {
          context.push(AppRouter.kBookDetailsScreen,extra: books);
        },
        child: ClipRRect(
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
      ),
    );
  }
}
