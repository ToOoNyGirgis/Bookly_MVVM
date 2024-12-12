import 'package:bookly_mvvm/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, this.height});
final double? height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {

    if (state is FeaturedBooksSuccess) {
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
    else if(state is FeaturedBooksFailure){
      return  CustomErrorWidget(errMsg: state.errMsg,);
    }
    else{
      return const CustomLoadingIndicator();
    }
  },
);
  }
}
