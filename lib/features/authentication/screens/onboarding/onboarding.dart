import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding.dot_navigation.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding.page.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding.skip.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";

import "package:flutter/material.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation PageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
