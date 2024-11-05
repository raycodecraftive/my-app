import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required GestureDetector Function(dynamic _, dynamic index) itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: TSizes.gridViewspacing,
        crossAxisSpacing: TSizes.gridViewspacing,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Handle tap here
          },
          child: TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.sm),
            showBorder: true,
            backgroundColor: Colors.transparent,
            child: Row(
              children: [
                /// -- Icon
                Flexible(
                  child: Container(
                    width: 56,
                    height: 56,
                    padding: const EdgeInsets.all(TSizes.sm),
                    decoration: BoxDecoration(
                      color: THelperFunctions.isDarkMode(context)
                          ? TColors.black
                          : TColors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image(
                      image: const AssetImage(TImages.clothIcon),
                      color: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.dark,
                    ),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                /// -- Text
                Expanded(
                  // Wrap the Column with Expanded
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TBrandTitleTextWithVerifiedIcon(
                        title: 'Nike',
                        brandTextSize: TextSizes.large,
                      ),
                      Text(
                        '256 Products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
