import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SellerAddProductMobScreen extends StatefulWidget {
  const SellerAddProductMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellerAddProductMobScreenState createState() =>
      SellerAddProductMobScreenState();
  static Widget builder(BuildContext context) {
    return const SellerAddProductMobScreen();
  }
}

class SellerAddProductMobScreenState extends State<SellerAddProductMobScreen> {
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
                SizedBox(height: 20.v),
                SizedBox(
                  height: 1375.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildAddProducts(context),
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
  Widget _buildAddProducts(BuildContext context) {
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
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_sell".tr,
                    style: CustomTextStyles.bodyMediumBlack900_2,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_dashboard".tr,
                    style: CustomTextStyles.bodyLargePoppinsBlack900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_get_started".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 59.v),
                  Text(
                    "msg_add_your_first_product".tr,
                    style: CustomTextStyles.titleLargePoppinsGray700,
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 52.v,
                    width: 186.h,
                    text: "lbl_add_products".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryDecoration,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 45.v),
                ],
              ),
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }
}
