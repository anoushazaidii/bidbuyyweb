import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SellerProfileMobScreen extends StatefulWidget {
  const SellerProfileMobScreen({Key? key}) : super(key: key);

  @override
  SellerProfileMobScreenState createState() => SellerProfileMobScreenState();

  static Widget builder(BuildContext context) {
    return const SellerProfileMobScreen();
  }
}

class SellerProfileMobScreenState extends State<SellerProfileMobScreen> {
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
                SizedBox(height: 20.v),
                SizedBox(
                  height: 1600.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildName(context),
                      // _buildSubtraction(context),
                      // _buildFrame(context),
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

  Widget _buildProfileInformationField(
    BuildContext context,
    String label,
    TextEditingController? controller,
    String hintText,
  ) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: label,
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
            padding: EdgeInsets.only(left: 5.h),
            child: CustomTextFormField(
              controller: controller,
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildName(BuildContext context) {
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
                vertical: 28.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_profile_information".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                  SizedBox(height: 16.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_name2".tr,
                    null, // Provide controller if necessary
                    "Enter Name",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_email2".tr,
                    null, // Provide controller if necessary
                    "Enter Email",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_phone2".tr,
                    null, // Provide controller if necessary
                    "Enter Phone",
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add your widgets here
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
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

  // Widget _buildSubtraction(BuildContext context) {
  //   // Remaining code for _buildSubtraction
  // }

  // Widget _buildFrame(BuildContext context) {
  //   // Remaining code for _buildFrame
  // }
}
