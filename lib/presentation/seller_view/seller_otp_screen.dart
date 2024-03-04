import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/widgets/CustomPinCodeTextField.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SellerOtpMobScreen extends StatefulWidget {
  const SellerOtpMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SellerOtpMobScreenState createState() => SellerOtpMobScreenState();
  static SellerOtpMobScreenState builder(BuildContext context) {
    return SellerOtpMobScreenState();
  }
}

class SellerOtpMobScreenState extends State<SellerOtpMobScreen> {
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
        // appBar: _buildAppBar(context),
        appBar: AppBarWidget(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // _buildFrameOne(context),
                SizedBox(height: 68.v),
                _buildEmailColumn(context),
                SizedBox(height: 100.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          RichText(
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
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
                horizontal: 12.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_create_account".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 15.v),
                  _buildEmailField(context),
                  SizedBox(height: 8.v),
                  _buildOTPField(context),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.4,
                      child: Text(
                        "msg_the_code_will_be".tr,
                        style: CustomTextStyles.bodyLargePoppinsGray90001,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                    height: 35.v,
                    text: "lbl_verify".tr,
                    margin: EdgeInsets.only(right: 9.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryTL17Decoration,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                  // SizedBox(height: 20.v),
                  // Subscribe_Widget(),
                ],
              ),
            ),
            // SizedBox(height: 18.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Phone*",
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
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
                // controller: emailController,
                ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOTPField(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.4,
            child: Text(
              "lbl_otp".tr,
              style: CustomTextStyles.bodyLargePoppinsGray90001,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(right: 124.h),
              child: CustomPinCodeTextField(
                context: context,
                // controller: otpController,
                onChanged: (value) {
                  // otpController?.text = value;
                },
              )),
        ],
      ),
    );
  }
}
