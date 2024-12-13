import "package:ecommerce_app/common/styles/shadows.dart";
import "package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart";
import "package:ecommerce_app/common/widgets/image/t_rounded_image.dart";
import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadows],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
        /// Thumbnail wishlist button, Discount
        TRoundedContainer(
          height: 180,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.dark : TColors.white,
          child: const Stack(
            children: [
              TRoundedImage(imageUrl: TImages.productImage1)
            ],
          ),
        )
        /// Details

        ],
      ),
      
    );
  }
}