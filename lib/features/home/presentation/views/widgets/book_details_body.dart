import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key, required this.books,
  });
  final BookModel books;


  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(books: books,),
                const Expanded(child: SizedBox(height: 40,)),
                const SimilarBooksSection(),
                const SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}




