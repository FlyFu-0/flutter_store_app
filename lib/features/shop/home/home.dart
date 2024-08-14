import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../common/widgets/custom_shpaes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shpaes/containers/search_container.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TSearchContainer(text: 'Search in Store')
              ],
            ))
          ],
        ),
      ),
    );
  }
}
