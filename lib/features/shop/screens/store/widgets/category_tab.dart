import "package:ecommerce_app/common/widgets/brands/brand_show_case.dart";
import "package:ecommerce_app/common/widgets/layouts/grid_layout.dart";
import "package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart";
import "package:ecommerce_app/common/widgets/text/section_heading.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            //Brands
            TBrandShowcase(images: [TImages.productImage1, TImages.productImage2, TImages.productImage3, ],),
            TBrandShowcase(images: [TImages.productImage1, TImages.productImage2, TImages.productImage3, ],),
            const SizedBox(height: TSizes.spaceBtwItems),
        
        
            //Products
            TSectionHeading(title: 'You might like', showActionButton: true, onPressed:  () {},),
            const SizedBox(height: TSizes.spaceBtwItems),
        
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
          ),
          ),

      ] 
    );
  }
}