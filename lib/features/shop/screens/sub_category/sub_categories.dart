import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/category_controller.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/cloud_helper_functions.dart';

import '../../../../common/widgets/shimmers/horizontal_product_shimmer.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final controller = CategoryController.instance;
    return Scaffold(
      appBar: TAppBar(
        title: Text(category.name),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                  width: double.infinity,
                  applyImageRadius: true,
                  imageUrl: TImages.promoBanner3),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              FutureBuilder(
                  future: controller.getSubCategories(category.id),
                  builder: (context, snapshot) {
                    const loader = THorizontalProductShimmer();
                    final widget = TCloudHelperFunctions.checkMultiRecordState(
                        snapshot: snapshot, loader: loader);
                    if (widget != null) return widget;

                    final subCategories = snapshot.data!;

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: subCategories.length,
                      itemBuilder: (_, index) {
                        final subCategory = subCategories[index];

                        return FutureBuilder(
                            future: controller.getCategoryProducts(
                                categoryId: subCategory.id),
                            builder: (context, snapshot) {
                              const loader = THorizontalProductShimmer();
                              final widget =
                                  TCloudHelperFunctions.checkMultiRecordState(
                                      snapshot: snapshot, loader: loader);
                              if (widget != null) return widget;

                              final products = snapshot.data!;

                              return Column(
                                children: [
                                  TSectionHeading(
                                    title: subCategory.name,
                                    onPressed: () =>
                                        Get.to(() => AllProductsScreen(
                                              title: subCategory.name,
                                              futureMethod: controller
                                                  .getCategoryProducts(
                                                      categoryId:
                                                          subCategory.id,
                                                      limit: -1),
                                            )),
                                  ),
                                  const SizedBox(
                                    height: TSizes.spaceBtwItems / 2,
                                  ),
                                  SizedBox(
                                    height: 120,
                                    child: ListView.separated(
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                              width: TSizes.spaceBtwItems,
                                            ),
                                        itemCount: products.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            TProductCardHorizontal(
                                                product: products[index])),
                                  ),
                                  const SizedBox(
                                    height: TSizes.spaceBtwSections,
                                  )
                                ],
                              );
                            });
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
