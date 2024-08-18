import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_and_share.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),

                  TProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
