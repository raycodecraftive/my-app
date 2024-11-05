import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/features/authentication/screens/signup.widgets/signup.dart';
import 'package:t_store/features/password_configuration/forget_password.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithBarHeight,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
            child: Column(
              children: [
                ///  Logo , Title & Sub - Title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      height: 150,
                      image: AssetImage(
                          dark ? TImages.splashAppLogo : TImages.splashAppLogo),
                    ),
                    Text(TTexts.loginTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    Text(TTexts.loginSubTitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                  ],
                ),

                /// Form
                Form(
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                      /// Remember me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () =>
                                Get.to(() => const ForgetPassword()),
                            child: const Text(TTexts.forgetPassword),
                          )
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Sign in Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => const NavigationMenu()),
                              child: const Text(TTexts.signIn))),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: const Text(TTexts.createAccount),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),

                /// Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Divider(
                            color: dark ? TColors.darkGrey : Colors.red,
                            thickness: 0.5,
                            indent: 60,
                            endIndent: 5)),
                    Text(TTexts.orSignInWith.capitalize!,
                        style: Theme.of(context).textTheme.labelMedium),
                    Flexible(
                        child: Divider(
                            color: dark ? TColors.darkGrey : Colors.red,
                            thickness: 0.5,
                            indent: 5,
                            endIndent: 60)),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Footer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: TColors.grey),
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Image(
                            width: TSizes.iconMd,
                            height: TSizes.iconMd,
                            image: AssetImage(TImages.google),
                          ),
                        )),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: TColors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
