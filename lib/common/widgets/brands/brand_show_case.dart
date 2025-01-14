import "package:ecommerce_app/common/widgets/brands/brand_card.dart";
import "package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart";
import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";


class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,

  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          const TBrandCard(showBorder: false,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
            
          ,)
        ],
      ),
    );
  }


Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child:  TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image),),
        ),
      );
    }
  }

