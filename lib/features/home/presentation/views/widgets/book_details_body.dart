import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_action_button.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 40,)),
                SimilarBooksSection(),
                SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}




