import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SellerVerifyMobScreen extends StatefulWidget {
  const SellerVerifyMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellerVerifyMobScreenState createState() => SellerVerifyMobScreenState();
  static Widget builder(BuildContext context) {
    return const SellerVerifyMobScreen();
  }
}

class SellerVerifyMobScreenState extends State<SellerVerifyMobScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  height: 1375.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildSellColumn(context),

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
  Widget _buildSellColumn(BuildContext context) {
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
              padding: EdgeInsets.symmetric(
                horizontal: 80.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_verification".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 58.v),
                  SizedBox(
                    width: 195.h,
                    child: Text(
                      "msg_please_wait_for".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargePoppinsGray700.copyWith(
                        height: 1.20,
                      ),
                    ),
                  ),
                  SizedBox(height: 88.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
