import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';

import '../add_product_delivery_mob_screen/widgets/delivery_item_widget.dart';
import 'models/delivery_item_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'provider/add_product_delivery_mob_provider.dart';

class AddProductDeliveryMobScreen extends StatefulWidget {
  const AddProductDeliveryMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddProductDeliveryMobScreenState createState() =>
      AddProductDeliveryMobScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddProductDeliveryMobProvider(),
      child: const AddProductDeliveryMobScreen(),
    );
  }
}

class AddProductDeliveryMobScreenState
    extends State<AddProductDeliveryMobScreen> {
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
            child: Column(
              children: [
                SizedBox(height: 68.v),
                SizedBox(
                  height: 1716.v,
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
                              _buildTimeColumn(context),
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
  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_shipping_time".tr,
            style: CustomTextStyles.titleMediumMulishGray90001_1,
          ),
          SizedBox(height: 4.v),
          Selector<AddProductDeliveryMobProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.timeController,
            builder: (context, timeController, child) {
              return CustomTextFormField(
                controller: timeController,
                hintText: "lbl_specify_a_date".tr,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                filled: true,
                fillColor: appTheme.gray900,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "msg_select_delivery".tr,
                style: CustomTextStyles.titleMediumMulishGray900,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Consumer<AddProductDeliveryMobProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 16.v,
                    );
                  },
                  itemCount: provider
                      .addProductDeliveryMobModelObj.deliveryItemList.length,
                  itemBuilder: (context, index) {
                    DeliveryItemModel model = provider
                        .addProductDeliveryMobModelObj.deliveryItemList[index];
                    return DeliveryItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 16.v),
          _buildTextField(context),
          SizedBox(height: 35.v),
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
    required String iconCursorClick,
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
                imagePath: iconCursorClick,
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
