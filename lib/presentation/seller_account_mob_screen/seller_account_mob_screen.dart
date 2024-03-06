import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/models/seller_account_mob_model.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/provider/seller_account_mob_provider.dart';
import 'package:bidbuyweb/widgets/app_bar/appBar_widget.dart';
import 'package:bidbuyweb/widgets/custom_drop_down.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SellerAccountMobScreen extends StatefulWidget {
  const SellerAccountMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellerAccountMobScreenState createState() => SellerAccountMobScreenState();
  static Widget builder(BuildContext context) {
    return const SellerAccountMobScreen();
  }
}

class SellerAccountMobScreenState extends State<SellerAccountMobScreen> {
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
        appBar: AppBarWidget(),
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
                  child: Column(
                    // alignment: Alignment.bottomCenter,

                    children: [
                      _buildFullNameColumn(context),
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
  Widget _buildAccountInformation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_full_name2".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray90001,
                  ),
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.bodyMediumPoppinsRed600,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Selector<SellerAccountMobProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.fullNameController,
              builder: (context, fullNameController, child) {
                return CustomTextFormField(
                  controller: fullNameController,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIban(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_iban2".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray90001,
                  ),
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.bodyMediumPoppinsRed600,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Selector<SellerAccountMobProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.editTextController,
              builder: (context, editTextController, child) {
                return CustomTextFormField(
                  controller: editTextController,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_account_number2".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray90001,
                  ),
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.bodyMediumPoppinsRed600,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Selector<SellerAccountMobProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.editTextController1,
              builder: (context, editTextController1, child) {
                return CustomTextFormField(
                  controller: editTextController1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBranchCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_branch_code2".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray90001,
                  ),
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.bodyMediumPoppinsRed600,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Selector<SellerAccountMobProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.editTextController2,
              builder: (context, editTextController2, child) {
                return CustomTextFormField(
                  controller: editTextController2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h,
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
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 27.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_account_information".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 29.v),
                  _buildAccountInformation(context),
                  SizedBox(height: 13.v),
                  _buildIban(context),
                  SizedBox(height: 13.v),
                  _buildAccountNumber(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 4.h,
                    ),
                    child: Selector<SellerAccountMobProvider,
                        SellerAccountMobModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.sellerAccountMobModelObj,
                      builder: (context, sellerAccountMobModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          hintText: "lbl_bank".tr,
                          items:
                              sellerAccountMobModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<SellerAccountMobProvider>()
                                .onSelected(value);
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildBranchCode(context),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                    height: 35.v,
                    text: "lbl_next".tr,
                    margin: EdgeInsets.only(right: 9.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryTL17Decoration,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
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
