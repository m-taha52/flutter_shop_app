import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, required this.image, required this.title, this.textcolor = TColors.textWhite, this.backgroundColor = TColors.white, this.onTap,
  });

  final String image,title;
  final Color textcolor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            ///Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
               color: backgroundColor ?? (dark ? TColors.dark : TColors.dark),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.dark : TColors.dark)
              )
            ),
        
            const SizedBox(height: TSizes.spaceBtwItems / 2),
        
            Text(
              'Shoes', 
              style: Theme.of(context).textTheme.labelMedium!.apply(color: textcolor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              
              )
        
                                      
        ],),
      ),
    );
  }
}
