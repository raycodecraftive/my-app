import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart'; // Ensure correct import path
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart'; // Ensure correct import path

class TAddButton extends StatelessWidget {
  const TAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TCircularIcon(
      icon: Iconsax.add,
      width: 32,
      height: 32,
      size: TSizes.md,
      color: TColors.white,
      backgroundColor: TColors.primary,
      dark: THelperFunctions.isDarkMode(
          context), // Set dark mode based on the theme
    );
  }
}
