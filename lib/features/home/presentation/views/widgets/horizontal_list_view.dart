import 'package:bookly_mvvm/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, this.height});
final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const HorizontalListViewItem();
        },
      ),
    );
  }
}
