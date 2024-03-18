import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddProductPhotosMobScreen extends StatefulWidget {
  const AddProductPhotosMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddProductPhotosMobScreenState createState() =>
      AddProductPhotosMobScreenState();
  static Widget builder(BuildContext context) {
    return const AddProductPhotosMobScreen();
  }
}

class AddProductPhotosMobScreenState extends State<AddProductPhotosMobScreen> {
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
            child: Column(
              children: [
                SizedBox(
                  height: 1819.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 17.v,
                          ),
                          decoration: AppDecoration.fillGray,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_sell".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900_2,
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
                                        "lbl_add_product".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack900_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 29.v),
                              AnotherStepper(
                                iconHeight: 41,
                                iconWidth: 45,
                                stepperDirection: Axis.horizontal,
                                activeIndex: 0,
                                barThickness: 1,
                                inverted: true,
                                stepperList: [
                                  StepperData(
                                    iconWidget: Column(
                                      children: [
                                        SizedBox(
                                          height: 27.adaptSize,
                                          width: 27.adaptSize,
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  padding: EdgeInsets.all(6.h),
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder11,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconPencilAltPrimary,
                                                    height: 11.adaptSize,
                                                    width: 11.adaptSize,
                                                    alignment:
                                                        Alignment.topRight,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEpSuccessFilled,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                alignment:
                                                    Alignment.bottomRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text(
                                            "lbl_description".tr,
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StepperData(
                                    iconWidget: Column(
                                      children: [
                                        SizedBox(
                                          height: 27.adaptSize,
                                          width: 27.adaptSize,
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  padding: EdgeInsets.all(6.h),
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder11,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconCursorClick,
                                                    height: 11.adaptSize,
                                                    width: 11.adaptSize,
                                                    alignment:
                                                        Alignment.topRight,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEpSuccessFilled,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                alignment:
                                                    Alignment.bottomRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text(
                                            "lbl_categories".tr,
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StepperData(
                                    iconWidget: Column(
                                      children: [
                                        Container(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          padding: EdgeInsets.all(6.h),
                                          decoration:
                                              AppDecoration.accent.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11,
                                          ),
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconCameraGray50,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 4.v),
                                          child: Text(
                                            "lbl_photos".tr,
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StepperData(
                                    iconWidget: Column(
                                      children: [
                                        Container(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          padding: EdgeInsets.all(6.h),
                                          decoration:
                                              AppDecoration.white.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11,
                                          ),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIconCube,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                        Text(
                                          "lbl_delivery".tr,
                                          style: CustomTextStyles
                                              .titleMediumMulishGray90001,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.v),
                              _buildNext(context),
                              SizedBox(height: 32.v),
                            ],
                          ),
                        ),
                      ),
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
  Widget _buildNext(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(23.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "msg_add_product_photos".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          DottedBorder(
            color: appTheme.gray20003,
            padding: EdgeInsets.only(
              left: 2.h,
              top: 2.v,
              right: 2.h,
              bottom: 2.v,
            ),
            strokeWidth: 2.h,
            radius: const Radius.circular(8),
            borderType: BorderType.RRect,
            dashPattern: const [
              10,
              10,
            ],
            child: Container(
              padding: EdgeInsets.all(22.h),
              decoration: AppDecoration.light.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 12.h,
                            bottom: 1.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 33.h,
                                  vertical: 23.v,
                                ),
                                decoration: AppDecoration.outlineBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgIconUpload,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                    ),
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                      width: 49.h,
                                      child: Text(
                                        "lbl_upload_a_photo".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumMulishGray90001
                                            .copyWith(
                                          height: 1.29,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.v),
                              SizedBox(
                                width: 91.h,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_max_size_25mb".tr,
                                        style: CustomTextStyles
                                            .bodySmallMulishGray90001,
                                      ),
                                      TextSpan(
                                        text: "lbl_jpg_png_gif".tr,
                                        style: CustomTextStyles
                                            .bodySmallMulishGray70002,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUnsplashKgquQs3b78,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                radius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_xyz_name_jpg".tr,
                                  style: CustomTextStyles
                                      .labelLargeMulishGray90001,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_24_mb".tr,
                                style:
                                    CustomTextStyles.bodySmallMulishGray90001_1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplashKgquQs3b78120x120,
                                      height: 120.adaptSize,
                                      width: 120.adaptSize,
                                      radius: BorderRadius.circular(
                                        8.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomIconButton(
                                      height: 44.adaptSize,
                                      width: 44.adaptSize,
                                      padding: EdgeInsets.all(10.h),
                                      decoration: IconButtonStyleHelper.fillRed,
                                      alignment: Alignment.center,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconPackVariants,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_xyz_name_jpg".tr,
                                  style: CustomTextStyles
                                      .labelLargeMulishGray90001,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_24_mb".tr,
                                style:
                                    CustomTextStyles.bodySmallMulishGray90001_1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUnsplashKgquQs3b781,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                radius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_87".tr,
                                      style: CustomTextStyles
                                          .labelLargeMulishGray90001,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_20_24_mb".tr,
                                        style: CustomTextStyles
                                            .bodySmallMulishGray90001_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Container(
                                height: 10.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray20003,
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.67,
                                    backgroundColor: appTheme.gray20003,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      appTheme.blueA400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 95.v),
                ],
              ),
            ),
          ),
          SizedBox(height: 38.v),
          CustomElevatedButton(
            height: 52.v,
            width: 186.h,
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles
                .gradientOnPrimaryContainerToPrimaryDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
          ),
        ],
      ),
    );
  }



  /// Common widget
  Widget _buildIconCursorClick(
    BuildContext context, {
    required String iconCursorClickImage,
  }) {
    return SizedBox(
      height: 27.adaptSize,
      width: 27.adaptSize,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 25.adaptSize,
              width: 25.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: CustomImageView(
                imagePath: iconCursorClickImage,
                height: 11.adaptSize,
                width: 11.adaptSize,
                alignment: Alignment.topRight,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEpSuccessFilled,
            height: 11.adaptSize,
            width: 11.adaptSize,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
