import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// -- Shiping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          /// The reason to put MainAxisAlignment.spaceBetween is to create space between the two texts

          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// -- Taxi Fee

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          /// The reason to put MainAxisAlignment.spaceBetween is to create space between the two texts

          children: [
            Text('Taxi Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          /// The reason to put MainAxisAlignment.spaceBetween is to create space between the two texts

          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.titleMedium)
          ],
        )
      ],
    );
  }
}
