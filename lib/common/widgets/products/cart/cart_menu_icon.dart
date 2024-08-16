import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

//TODO: in videos "App ui Design" different this class
class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.notifCircleColor
  });

  final Color? iconColor;
  final Color? notifCircleColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor != null
                ? iconColor!
                : dark
                    ? TColors.white
                    : TColors.black,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: notifCircleColor != null
                ? notifCircleColor!
                : dark
                    ? TColors.white
                    : TColors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: iconColor != null
                      ? iconColor!
                      : dark
                          ? TColors.black
                          : TColors.white,
                  fontSizeFactor: .8),
            ),
          ),
        ),
      )
    ]);
  }
}
