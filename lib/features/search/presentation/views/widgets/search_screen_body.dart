import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:bookly_mvvm/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_mvvm/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding16),
            child: Text(
              'Result',
              textAlign: TextAlign.start,
              style: FontsStyles.title24,
            ),
          ),
          Expanded(child: SearchListView()),
        ],
      ),
    ));
  }
}

