import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess) {
          return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You also may like',
              textAlign: TextAlign.start,
              style: FontsStyles.price20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: ''
              ),
            ),
            const SizedBox(height: 20,),
            SimilarBooksListView(height: MediaQuery
                .of(context)
                .size
                .height * 0.18,),
          ],
        );
        }
        else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMsg: state.errMsg);
        }
        else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
