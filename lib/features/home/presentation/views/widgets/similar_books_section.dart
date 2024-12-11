import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
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
        HorizontalListView(height: MediaQuery.of(context).size.height*0.18,),
      ],
    );
  }
}
