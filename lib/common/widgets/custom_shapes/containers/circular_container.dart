import "package:ecommerce_app/utils/constants/colors.dart";
import "package:flutter/material.dart";

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = TColors.white

  });

  final double? width;
    final double? height;
    final double radius;
    final double padding;
    final Widget? child;
    final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: TColors.textWhite.withOpacity(0.1)
      ),
      child: child,
    );
  }
}