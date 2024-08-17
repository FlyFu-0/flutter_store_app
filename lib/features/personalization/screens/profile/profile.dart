import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const TSectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TProfileMenu(
              title: 'Name',
              value: 'FlyFu-0',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Username',
              value: 'flyfu-0',
              onPressed: () {},
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const TSectionHeading(
              title: 'Personal Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TProfileMenu(
              title: 'User ID',
              value: '45689',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'E-mail',
              value: 'tihonov-04@ynadex.ru',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Phone Number',
              value: '+92-317-8059528',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Date of Birth',
              value: '10 Oct, 1994',
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
