import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_title_image.dart';
import 'package:bidbuyweb/widgets/custom_drop_down.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';

import 'models/seller_adress_mob_model.dart';
import 'package:flutter/material.dart';
import 'provider/seller_adress_mob_provider.dart';

class SellerAdressMobScreen extends StatefulWidget {
  const SellerAdressMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellerAdressMobScreenState createState() => SellerAdressMobScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellerAdressMobProvider(),
      child: SellerAdressMobScreen(),
    );
  }
}

class SellerAdressMobScreenState extends State<SellerAdressMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                // _buildAppBarRow(context),
                SizedBox(height: 20.v),
                SizedBox(
                  height: 1600.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildAddressColumn(context),
                      // _buildSubtractionColumn(context),
                      // _buildFrameColumn(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 32.v,
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "msg_sign_up_and_get2".tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
            TextSpan(
              text: "lbl_sign_up_now".tr,
              style: theme.textTheme.labelLarge!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
      styleType: Style.bgGradientnameonPrimaryContainernameprimary,
    );
  }
  /// Section Widget
  Widget _buildAddressColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "lbl_sell".tr,
                  style: CustomTextStyles.bodyMediumBlack900_2,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(left: 4.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_account".tr,
                    style: CustomTextStyles.bodyMediumGray90001,
                  ),
                ),
              ],
            ),
            SizedBox(height: 18.v),
            Container(
              width: 358.h,
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_address_information".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 42.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 6.h,
                    ),
                    child: Selector<SellerAdressMobProvider,
                        SellerAdressMobModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.sellerAdressMobModelObj,
                      builder: (context, sellerAdressMobModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          hintText: "lbl_pakistan".tr,
                          items:
                              sellerAdressMobModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<SellerAdressMobProvider>()
                                .onSelected(value);
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 6.h,
                    ),
                    child: Selector<SellerAdressMobProvider,
                        SellerAdressMobModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.sellerAdressMobModelObj,
                      builder: (context, sellerAdressMobModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          hintText: "lbl_select_state".tr,
                          items:
                              sellerAdressMobModelObj?.dropdownItemList1 ?? [],
                          onChanged: (value) {
                            context
                                .read<SellerAdressMobProvider>()
                                .onSelected1(value);
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 6.h,
                    ),
                    child: Selector<SellerAdressMobProvider,
                        SellerAdressMobModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.sellerAdressMobModelObj,
                      builder: (context, sellerAdressMobModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          hintText: "lbl_select_area".tr,
                          items:
                              sellerAdressMobModelObj?.dropdownItemList2 ?? [],
                          onChanged: (value) {
                            context
                                .read<SellerAdressMobProvider>()
                                .onSelected2(value);
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: Selector<SellerAdressMobProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.addressController,
                      builder: (context, addressController, child) {
                        return CustomTextFormField(
                          controller: addressController,
                          hintText: "msg_enter_complete_address".tr,
                          hintStyle: CustomTextStyles.bodyLargePoppinsGray700,
                          maxLines: 3,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 15.v,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                    height: 35.v,
                    text: "lbl_next".tr,
                    margin: EdgeInsets.only(right: 9.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryTL17Decoration,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                  SizedBox(height: 28.v),
                ],
              ),
            ),
            SizedBox(height: 18.v),
          ],
        ),
      ),
    );
  }
}