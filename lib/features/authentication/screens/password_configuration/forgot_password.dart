import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                TTexts.forgetPasswordTitle, 
                style: Theme.of(context).textTheme.headlineMedium,
                ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(
                TTexts.forgetPasswordSubTitle, 
                style: Theme.of(context).textTheme.labelMedium,
                ),
              const SizedBox(height: TSizes.spaceBtwSections * 2),

              TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)
                ),
              ),

              SizedBox(height: TSizes.spaceBtwSections,),
              
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: Text(TTexts.submit)))

              ///TextField
            ],),
          
          )
      );
  }
}