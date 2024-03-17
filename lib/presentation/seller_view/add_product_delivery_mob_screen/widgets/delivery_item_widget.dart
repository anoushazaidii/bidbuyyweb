import 'package:bidbuyweb/core/app_export.dart';
import '../models/delivery_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeliveryItemWidget extends StatelessWidget {
  DeliveryItemWidget(
    this.deliveryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliveryItemModel deliveryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            height: 24.v,
            width: 23.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              border: Border.all(
                color: appTheme.blueGray100,
                width: 2.h,
                strokeAlign: strokeAlignCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
            ),
            child: Text(
              deliveryItemModelObj.selfPickupText!,
              style: CustomTextStyles.bodyLargeMulishGray900,
            ),
          ),
        ],
      ),
    );
  }
}
