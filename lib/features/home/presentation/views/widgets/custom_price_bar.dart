import 'package:bookly_mvvm/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomPriceButton extends StatelessWidget {
  const CustomPriceButton({super.key, this.leftBorder, this.rightBorder, this.buttonColor, this.text, this.textColor, this.onPressed});
  final double? leftBorder ;
  final double? rightBorder ;
  final Color? buttonColor ;
  final Color? textColor ;
  final String? text ;
  final Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor??Colors.orange,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(
                leftBorder??30,
              ),
              right: Radius.circular(
                rightBorder??30,
              ),
            ),
          ),
        ),
        child: Text(
          text??'price',
          style: FontsStyles.price20.copyWith(color: textColor??Colors.black),
        ),
      ),
    );
  }
}
