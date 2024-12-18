import 'package:bookly_mvvm/core/utils/constatns.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_price_bar.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key, this.onPressed,
  });
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding16),
      child: Row(
        children: [
           const Expanded(child: CustomPriceButton(
            rightBorder: 0,
            leftBorder: 14,
            buttonColor: Colors.white,
            text: '19.9 €',
          )),
          Expanded(child: CustomPriceButton(
            onPressed: onPressed,
            leftBorder: 0,
            rightBorder: 14,
            text: 'Free preview',
            textColor: Colors.white,
          )),
        ],
      ),
    );
  }
}
