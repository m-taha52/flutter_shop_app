import "package:ecommerce_app/common/styles/spacing_styles.dart";
import "package:ecommerce_app/common/widgets.login_signup/form_divider.dart";
import "package:ecommerce_app/common/widgets.login_signup/social_buttons.dart";
import "package:ecommerce_app/features/authentication/screens/login/widgets/login_form.dart";
import "package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title & Subtitle
              TLoginHeader(dark: dark),

              // Form
              const TLoginForm(),

              //Divider
              const TFormDivider(dividerText: TTexts.orSignInWith,),

              const SizedBox(height: TSizes.spaceBtwItems),
              //Footer

              const TSocialButtons(),
            ],
          ),
        ),
      ), // Used to make it scrollable on small screens
    );
  }
}

