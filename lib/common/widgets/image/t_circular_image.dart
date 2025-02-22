import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";


class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    this.boxFit = BoxFit.cover, 
    required this.image, 
    this.isNetworkImage = false, 
    this.overlayColor, 
    this.backgroundColor, 
    this.width = 56, 
    this.height = 56, 
    this.padding = TSizes.sm,
  });

  final BoxFit? boxFit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;




  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? TColors.black : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
     
      child: Center(
        child: Image(
          fit: boxFit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
           color: overlayColor,
          ),
      ),
    
    
    );
  }
}