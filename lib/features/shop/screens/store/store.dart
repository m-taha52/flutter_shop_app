import "package:ecommerce_app/common/widgets/appbar/appbar.dart";
import "package:ecommerce_app/common/widgets/appbar/tabbar.dart";
import "package:ecommerce_app/common/widgets/brands/brand_show_case.dart";
import "package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart";
import "package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart";
import "package:ecommerce_app/common/widgets/image/t_circular_image.dart";
import "package:ecommerce_app/common/widgets/layouts/grid_layout.dart";
import "package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart";
import "package:ecommerce_app/common/widgets/brands/brand_card.dart";
import "package:ecommerce_app/common/widgets/text/section_heading.dart";
import "package:ecommerce_app/common/widgets/text/t_brand_title_text_with_verified_icon.dart";
import "package:ecommerce_app/features/shop/screens/store/widgets/category_tab.dart";
import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/enums.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon( onPressed: () {})
          ],
        ),
        body:  NestedScrollView(
          headerSliverBuilder: (_, innerBoxIscrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
      
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                      SizedBox(height: TSizes.spaceBtwSections),
      
                      TSectionHeading(title: "Featured Brands", showActionButton: true, onPressed: (){}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
      
                      TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return TBrandCard(showBorder: false,);
                      })
      
                      
      
                    ],
                  ),
                ),
      
                //Tabs
                bottom:  const TTabBar(
                  tabs:  [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              )
            ];
          },
          body: TabBarView(
            children: 
            [
              TCategoryTab()
            ])),
      ),
    );
  }
}


