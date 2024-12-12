import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMsg});
  final String errMsg;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errMsg,style: FontsStyles.price20,));
  }
}
