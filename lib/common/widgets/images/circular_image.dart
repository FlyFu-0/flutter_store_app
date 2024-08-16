import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding = TSizes.sm,
    this.isNetworkImage = false,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Container(
          width: width,
          height: height,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: backgroundColor ?? (dark ? TColors.black : TColors.white),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Image(
              fit: fit,
              image: isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
              color: overlayColor,
            ),
          ),
        )
      ],
    );
  }
}
