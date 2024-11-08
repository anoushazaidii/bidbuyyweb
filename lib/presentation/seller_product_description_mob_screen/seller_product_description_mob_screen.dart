import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/presentation/category_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/add_product_mob_screen.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/seller_product_description_mob_provider.dart';


class Product {
  final String name;
  final String description;
  final String no_of_units_available;
  final String dimensions;
  final String initial_price;
  final String sellerUid;

  Product({
    required this.sellerUid,
    required this.name,
    required this.description,
    required this.no_of_units_available,
    required this.dimensions,
    required this.initial_price,
  });
}

class SellerProductDescriptionMobScreen extends StatefulWidget {
    final String? sellerUid;

  const SellerProductDescriptionMobScreen({Key? key, required this.sellerUid})
      : super(
          key: key,
        );

  @override
  SellerProductDescriptionMobScreenState createState() =>
      SellerProductDescriptionMobScreenState();
  static Widget builder(BuildContext context,String sellerUid) {
    return ChangeNotifierProvider(
      create: (context) => SellerProductDescriptionMobProvider(),
      child:  SellerProductDescriptionMobScreen(sellerUid: sellerUid,),
    );
  }
}

class SellerProductDescriptionMobScreenState
    extends State<SellerProductDescriptionMobScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
      
  }
  @override
 
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:AppBar(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 68.v),
                SizedBox(
                  height: 2159.v,
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
                              SizedBox(height: 34.v),
                              AnotherStepper(
                                iconHeight: 42,
                                iconWidth: 55,
                                stepperDirection: Axis.horizontal,
                                activeIndex: 0,
                                barThickness: 1,
                                inverted: true,
                                stepperList: [
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
                                            imagePath:
                                                ImageConstant.imgIconPencilAlt,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text(
                                            "lbl_description".tr,
                                            style: CustomTextStyles
                                                .labelMediumMulishGray90001Bold,
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
                                            imagePath: ImageConstant
                                                .imgIconCursorClick,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text(
                                            "lbl_categories".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray90001,
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
                                                ImageConstant.imgIconCameraGray50,
                                            height: 11.adaptSize,
                                            width: 11.adaptSize,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text(
                                            "lbl_photos".tr,
                                            style: CustomTextStyles
                                                .labelMediumMulishGray90001,
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
                                        Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text(
                                            "lbl_delivery".tr,
                                            style: CustomTextStyles
                                                .labelMediumMulishGray90001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.v),
                              _buildProductDetails(context),
                              SizedBox(height: 32.v),
                            ],
                          ),
                        ),
                      ),
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

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            "lbl_product_name".tr,
            style: CustomTextStyles.titleMediumGray90001_1,
          ),
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Selector<SellerProductDescriptionMobProvider,
              TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "msg_graphic_card_gigabyte".tr,
                hintStyle: CustomTextStyles.bodyLargeGray90001,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray20003,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_description".tr,
          style: CustomTextStyles.titleMediumGray90001_1,
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Selector<SellerProductDescriptionMobProvider,
              TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.descriptionController,
            builder: (context, descriptionController, child) {
              return CustomTextFormField(
                controller: descriptionController,
                hintText: "msg_the_nvidia_rtx_3050".tr,
                hintStyle: CustomTextStyles.bodyLargeGray90001,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                },
                maxLines: 9,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 13.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray20003,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAvailabilityValue(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_number_of_units".tr,
          style: CustomTextStyles.titleMediumGray90001_1,
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Selector<SellerProductDescriptionMobProvider,
              TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.availabilityvalueController,
            builder: (context, availabilityvalueController, child) {
              return CustomTextFormField(
                controller: availabilityvalueController,
                hintText: "lbl_availability".tr,
                hintStyle: CustomTextStyles.bodyLargeGray700,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray20003,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 66.h,
      text: "lbl_0".tr,
      margin: EdgeInsets.only(left: 62.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyLargeMulishGray700,
    );
  }

  /// Section Widget
  Widget _buildZero1(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 66.h,
      text: "lbl_0".tr,
      margin: EdgeInsets.only(left: 70.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyLargeMulishGray700,
    );
  }

  /// Section Widget
  Widget _buildZero2(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 66.h,
      text: "lbl_0".tr,
      margin: EdgeInsets.only(left: 64.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyLargeMulishGray700,
    );
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_initial_price".tr,
            style: CustomTextStyles.titleMediumGray90001_1,
          ),
          SizedBox(height: 5.v),
          Selector<SellerProductDescriptionMobProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.priceController,
            builder: (context, priceController, child) {
              return CustomTextFormField(
                controller: priceController,
                hintText: "lbl_product_price".tr,
                hintStyle: CustomTextStyles.bodyLargeGray700,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray20003,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
      final provider = Provider.of<SellerProductDescriptionMobProvider>(context, listen: false);

      Product newProduct = Product(
   name:provider.nameController.text, 
   description: provider.descriptionController.text, 
   no_of_units_available: provider.availabilityvalueController.text,
    dimensions: 
    "", 
    initial_price: provider.priceController.text,
    sellerUid : widget.sellerUid!,
  );
    print("New Product Created: ${newProduct.name}, ${newProduct.description}");

    return CustomElevatedButton(
      
      onPressed: (){
         Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AddProductPhotosMobScreen(product: newProduct)),
    );
      },
      height: 52.v,
      width: 186.h,
      text: "lbl_next".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientOnPrimaryContainerToPrimaryDecoration,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 312.h,
            margin: EdgeInsets.only(right: 9.h),
            child: Text(
              "msg_fill_in_the_basic".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumGray90001_1.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          _buildName(context),
          
          SizedBox(height: 8.v),
          Text(
            "lbl_38_60".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          _buildDescription(context),
          SizedBox(height: 8.v),
          Text(
            "lbl_38_60".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 8.v),
          _buildAvailabilityValue(context),
          SizedBox(height: 8.v),
          Text(
            "lbl_38_60".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_dimensions_optional".tr,
            style: CustomTextStyles.titleMediumGray90001SemiBold,
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Text(
                  "lbl_length_mm".tr,
                  style: CustomTextStyles.titleMediumGray90001SemiBold,
                ),
              ),
              _buildZero(context),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Text(
                  "lbl_width_mm".tr,
                  style: CustomTextStyles.titleMediumGray90001SemiBold,
                ),
              ),
              _buildZero1(context),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Text(
                  "lbl_height_mm".tr,
                  style: CustomTextStyles.titleMediumGray90001SemiBold,
                ),
              ),
              _buildZero2(context),
            ],
          ),
          SizedBox(height: 32.v),
          _buildTextField(context),
          SizedBox(height: 23.v),
          _buildNext(context),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
    }