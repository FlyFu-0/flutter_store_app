import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: dark ? TColors.white : TColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
