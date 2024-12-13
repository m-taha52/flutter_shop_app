import "package:ecommerce_app/utils/constants/colors.dart";
import "package:flutter/material.dart";


class TShadowStyle {

  static final verticalProductShadows = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadows = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}

