import 'package:bookly_mvvm/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {

        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: height??MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HorizontalListViewItem(books: state.books[index],);
              },
            ),
          );
        }
        else if(state is SimilarBooksFailure){
          return  CustomErrorWidget(errMsg: state.errMsg,);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
