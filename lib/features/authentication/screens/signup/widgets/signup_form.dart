import "package:ecommerce_app/common/widgets.login_signup/form_divider.dart";
import "package:ecommerce_app/common/widgets.login_signup/social_buttons.dart";
import "package:ecommerce_app/features/authentication/screens/signup/verify_email.dart";
import "package:ecommerce_app/features/authentication/screens/signup/widgets/terms_conditions-checkbox.dart";

import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";


class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.firstName,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
    
          const SizedBox(width: TSizes.spaceBtnInputFields,),
    
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.lastName,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
          ),
        ],),
    
        const SizedBox(height: TSizes.spaceBtnInputFields,),
    
        //Username
    
        TextFormField(
          expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
        ),
    
    
        const SizedBox(height: TSizes.spaceBtnInputFields,),
    
          TextFormField(
          expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
        ),
    
    
        const SizedBox(height: TSizes.spaceBtnInputFields,),
    
        TextFormField(
          expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
        ),
    
        const SizedBox(height: TSizes.spaceBtnInputFields,),
    
        TextFormField(
          obscureText: true,
          expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
        ),
    
    
        const SizedBox(height: TSizes.spaceBtwSections),
    
        //Terms and conditions
    
        const TTermsAndConditions(),
    
        const SizedBox(height: TSizes.spaceBtwSections),
    
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.createAccount)),
        ),
    
        const SizedBox(height: TSizes.spaceBtwSections),
    
        ///Divider
        const TFormDivider(dividerText: TTexts.orSignUpWith),
    
        const SizedBox(height: TSizes.spaceBtwSections),
    
        ///Social Buttons 
        const TSocialButtons(),
    
    
    
    
    
    
    
      ]
    ));
  }
}

