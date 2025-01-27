import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', value: 1.0,),
              TRatingProgressIndicator(text: '4', value: .8,),
              TRatingProgressIndicator(text: '3', value: .6,),
              TRatingProgressIndicator(text: '2', value: .4,),
              TRatingProgressIndicator(text: '1', value: .2,),
            ],
          ),
        )
      ],
    );
  }
}
