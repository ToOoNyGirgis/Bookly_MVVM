import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/core/utils/functions/launch_url.dart';
import 'package:bookly_mvvm/core/widgets/custom_action_button.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_image.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.books});

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child:  BookDetailsImage(imageUrl: books.volumeInfo.imageLinks!.thumbnail,),),
        const SizedBox(height: 40,),
        Text(
          books.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: FontsStyles.bookTitle30.copyWith(
            fontFamily: AppFonts.mainFont,
          ),
        ),
        Text(
          books.volumeInfo.authors![0],
          textAlign: TextAlign.center,
          style: FontsStyles.price20
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        Rating(rating:books.volumeInfo.averageRating?.toStringAsFixed(1) ?? '0.0' ,count:books.volumeInfo.ratingsCount??0 ,),
         CustomActionButton(
           onPressed: () {
             launchURL(context, link: books.volumeInfo.previewLink!);
           }
         ),
      ],
    );
  }

}
