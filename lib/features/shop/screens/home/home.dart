
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/text/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
              children: [
                        //App Bar
                        THomeAppBar(),
                        SizedBox(height: TSizes.spaceBtwSections),

                        //Searchbar
                       TSearchContainer(text: 'Search in Store'  ),
                       SizedBox(height: TSizes.spaceBtwSections,),

                       Padding(
                        padding: EdgeInsets.only(left: TSizes.defaultSpace),
                        child: Column(
                          children: [
                            TSectionHeading(title: 'Popular Categories', showActionButton: false,),
                            SizedBox(height: TSizes.spaceBtwItems,),

                            ///Categories
                            THomeCategories()
                          ],
                        ),
                        )
              ],
            ),),

            //Body 
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                  TProductCardVertical(),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
