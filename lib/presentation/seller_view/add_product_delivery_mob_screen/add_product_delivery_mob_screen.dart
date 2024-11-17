import 'package:bidbuyweb/backend/user_auth/firebase_auth_servies.dart';
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/models/product_model.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/seller_account_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/add_product_mob_screen.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';

import '../add_product_delivery_mob_screen/widgets/delivery_item_widget.dart';
import 'models/delivery_item_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'provider/add_product_delivery_mob_provider.dart';

class AddProductDeliveryMobScreen extends StatefulWidget {
  final CombinedProductModel combinedProductModel;

  const AddProductDeliveryMobScreen({
    Key? key,
    required this.combinedProductModel,
  }) : super(
          key: key,
        );

  @override
  AddProductDeliveryMobScreenState createState() =>
      AddProductDeliveryMobScreenState();
  static Widget builder(
      BuildContext context, CombinedProductModel combinedProductModel) {
    return ChangeNotifierProvider(
      create: (context) => AddProductDeliveryMobProvider(),
      child: AddProductDeliveryMobScreen(
        combinedProductModel: combinedProductModel,
      ),
    );
  }
}

class AddProductDeliveryMobScreenState
    extends State<AddProductDeliveryMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuthService authService = FirebaseAuthService();

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

  Future<void> _selectDate(
    BuildContext context,
    TextEditingController controller,
  ) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    // Format the selected date to a readable format, e.g., 'MM/dd/yyyy'
    controller.text = "${picked?.month}/${picked?.day}/${picked?.year}";
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_shipping_starting_time".tr,
            style: CustomTextStyles.titleMediumMulishGray90001_1,
          ),
          SizedBox(height: 4.v),
          // Field for Starting Time
          Selector<AddProductDeliveryMobProvider, TextEditingController?>(
            selector: (context, provider) => provider.startingTimeController,
            builder: (context, startingTimeController, child) {
              return GestureDetector(
                onTap: () => _selectDate(context, startingTimeController!),
                child: AbsorbPointer(
                  child: CustomTextFormField(
                    controller: startingTimeController,
                    hintText: "lbl_specify_starting_date".tr,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 14.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                    filled: true,
                    fillColor: appTheme.gray900,
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 10.v), // Add some spacing between fields

          Text(
            "lbl_shipping_ending_time".tr,
            style: CustomTextStyles.titleMediumMulishGray90001_1,
          ),
          SizedBox(height: 4.v),
          // Field for Ending Time
          Selector<AddProductDeliveryMobProvider, TextEditingController?>(
            selector: (context, provider) => provider.endingTimeController,
            builder: (context, endingTimeController, child) {
              return GestureDetector(
                onTap: () => _selectDate(context, endingTimeController!),
                child: AbsorbPointer(
                  child: CustomTextFormField(
                    controller: endingTimeController,
                    hintText: "lbl_specify_ending_date".tr,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 14.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                    filled: true,
                    fillColor: appTheme.gray900,
                  ),
                ),
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
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                final provider = Provider.of<AddProductDeliveryMobProvider>(
                    context,
                    listen: false);

                // Perform the action only if the form is valid
                ProductModel productModel = ProductModel(
                  sellerId: widget.combinedProductModel.product.sellerUid,
                  productId: generateRandomUID(),
                  productName: widget.combinedProductModel.product.name,
                  description: widget.combinedProductModel.product.description,
                  length: 0,
                  initialPrice:
                      widget.combinedProductModel.product.initial_price,
                  biddingList: [],
                  photosList: widget.combinedProductModel.imageUrls,
                  // Assign starting and ending times
                  startingTime: provider.startingTimeController.text,
                  endingTime: provider.endingTimeController.text,
                  bidCount: 0,
                );

                authService.saveProductDataToFirestore(productModel, context);
              }
            },
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
