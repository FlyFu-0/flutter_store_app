import 'package:flutter/widgets.dart';
import 'package:t_store/common/widgets/shimmers/shimmer.dart';
import 'package:t_store/utils/constants/sizes.dart';

class THorizontalProductShimmer extends StatelessWidget {
  const THorizontalProductShimmer({super.key, this.itemCount = 4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwSections),
      height: 120,
      child: ListView.separated(
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        itemBuilder: (context, index) => const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TShimmerEffect(width: 120, height: 120),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
