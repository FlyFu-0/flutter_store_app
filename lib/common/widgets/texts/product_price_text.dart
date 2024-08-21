import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    required this.price,
    this.currentSign = '\$',
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrought = false,
  });

  final String currentSign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrought;

  @override
  Widget build(BuildContext context) {
    return Text(currentSign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrought ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrought ? TextDecoration.lineThrough : null));
  }
}
