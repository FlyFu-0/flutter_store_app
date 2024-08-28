import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/shimmers/vertical_product_shimmer.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shpaes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shpaes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../controllers/product/product_controller.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TSearchContainer(text: 'Search in Store'),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      THomeCategories()
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => AllProductsScreen(
                          title: 'Popular Products',
                          // query: FirebaseFirestore.instance
                          //     .collection('Products')
                          //     .where('IsFeatured', isEqualTo: true)
                          //     .limit(6),
                          futureMethod: controller.fetchAllFeaturedProducts(),
                        )),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections / 2,
                  ),
                  Obx(() {
                    if (controller.isLoading.value) {
                      return const TVerticalProductShimmer();
                    }
                    if (controller.featuredProducts.isEmpty) {
                      return Center(
                        child: Text(
                          'No Data Found!',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      );
                    }
                    return TGridLayout(
                        itemCount: controller.featuredProducts.length,
                        itemBuilder: (_, index) => TProductCardVertical(
                            product: controller.featuredProducts[index]));
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
