import "package:ecommerce_app/features/authentication/screens/password_configuration/forgot_password.dart";
import "package:ecommerce_app/features/authentication/screens/signup/signup.dart";
import "package:ecommerce_app/navigation_menu.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnInputFields / 2),
    
            // Remember me & Forgot Password
           Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Flexible(
      child: Row(
        children: [
          Checkbox(value: true, onChanged: (value) {}),
          const Flexible(
            child: Text(TTexts.rememberMe, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    ),
    Flexible(
      child: TextButton(
        onPressed: () => Get.to(() => const ForgotPassword()),
        child: const Text(
          TTexts.forgetPassword,
          overflow: TextOverflow.ellipsis, // Prevents text overflow.
          style: TextStyle(fontSize: 12), // Reduce font size if needed.
        ),
      ),
    ),
  ],
),

    
            const SizedBox(height: TSizes.spaceBtwSections),
    
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
    
            const SizedBox(height: TSizes.spaceBtwItems),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to( () => const SignupScreen());
                },
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
