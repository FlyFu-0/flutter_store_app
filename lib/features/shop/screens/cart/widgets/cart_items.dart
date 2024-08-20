import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/products/cart/product_quantity_with_add_and_remove_button.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddAndRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
