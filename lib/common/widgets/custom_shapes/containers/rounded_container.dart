import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.child,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary, 
    this.margin,
    this.showBorder = false,

  });

    final double? width;
    final double? height;
    final double radius;
    final EdgeInsetsGeometry? padding;
    final Widget? child;
    final Color backgroundColor;
    final Color borderColor;
    final EdgeInsetsGeometry? margin;
    final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}