import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key, required this.rating, required this.count,
  });

  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star,color: Colors.yellow,),
           Text(
            '$rating ',
            style: FontsStyles.price20,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
          ),
          Text(
            '($count)',
            style: FontsStyles.price20.copyWith(color: Colors.grey),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
