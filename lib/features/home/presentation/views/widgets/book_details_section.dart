import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/core/widgets/custom_action_button.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: const HorizontalListViewItem(imageUrl: '',)),
        const SizedBox(height: 40,),
        Text(
          'book name',
          textAlign: TextAlign.center,
          style: FontsStyles.bookTitle30.copyWith(
            fontFamily: AppFonts.mainFont,
          ),
        ),
        Text(
          'authors',
          textAlign: TextAlign.center,
          style: FontsStyles.price20
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
         Rating(count: 0,rating: 0,),
        const CustomActionButton(),
      ],
    );
  }
}
