import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/presentation/product_mob_screen.dart';
import 'package:bidbuyweb/theme/app_decoration.dart';
import 'package:bidbuyweb/theme/custom_text_style.dart';
import 'package:bidbuyweb/theme/theme_helper.dart';

import 'custom_image_view.dart';
import '../domain/models/productcard_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  final ProductcardItemModel productcardItemModelObj;

  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print("Image URL: ${productcardItemModelObj.imageUrls != null && productcardItemModelObj.imageUrls!.isNotEmpty ? productcardItemModelObj.imageUrls![0] : 'No image available'}");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ProductMobScreen()),
    );
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 2,
            margin: EdgeInsets.all(0),
            color: appTheme.gray200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Container(
              height: 172.v,
              width: 171.h,
              decoration: AppDecoration.fillGray200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  
                  CustomImageView(
                     imagePath: (productcardItemModelObj.imageUrls != null && 
                                 productcardItemModelObj.imageUrls!.isNotEmpty) 
                                 ? productcardItemModelObj.imageUrls![0] 
                                 : '', // Fallback if no image available
                    height: 172.v,
                    width: 171.h,
                    radius: BorderRadius.circular(11.h),
                    alignment: Alignment.center,
                  ),
                  if (productcardItemModelObj.timeLeft1 != null)
                    Positioned(
                      right: 8.h,
                      top: 8.v,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.v),
                        decoration: AppDecoration.fillPrimary,
                        child: Text(
                          productcardItemModelObj.timeLeft1!,
                          style: CustomTextStyles.bodySmallPrimaryContainer,
                        ),
                      ),
                    ),
                  Positioned(
                    top: 8.v,
                    left: 8.h,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          productcardItemModelObj.productName ?? '',
          style: theme.textTheme.titleMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 5.v),
        Row(
          children: [
            Text(
              productcardItemModelObj.price ?? '',
              style: theme.textTheme.titleLarge,
            ),
            Spacer(),
            Text(
              '${productcardItemModelObj.bidCount ?? '0'} bids',
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ],
        ),
        SizedBox(height: 5.v),
        Row(
          children: [
            Expanded(
              child: Text(
                productcardItemModelObj.sellerName ?? 'Unknown Seller',
                style: theme.textTheme.bodySmall,
              ),
            ),
            if (productcardItemModelObj.sellerRating != null)
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  SizedBox(width: 3.h),
                  Text(
                    productcardItemModelObj.sellerRating!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
