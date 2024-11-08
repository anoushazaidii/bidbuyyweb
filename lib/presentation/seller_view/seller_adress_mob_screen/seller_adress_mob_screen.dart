import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/seller_account_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_profile_mob_screen.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_title_image.dart';
import 'package:bidbuyweb/widgets/custom_drop_down.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';

import 'models/seller_adress_mob_model.dart';
import 'package:flutter/material.dart';
import 'provider/seller_adress_mob_provider.dart';

class SellerAdressMobScreen extends StatefulWidget {
  final SellerProfile sellerProfile;

  const SellerAdressMobScreen({Key? key, required this.sellerProfile})
      : super(key: key);

  @override
  SellerAdressMobScreenState createState() => SellerAdressMobScreenState();

  static Widget builder(BuildContext context, SellerProfile sellerProfile) {
    return ChangeNotifierProvider(
      create: (context) => SellerAdressMobProvider(),
      child: SellerAdressMobScreen(sellerProfile: sellerProfile),
    );
  }
}

class SellerAdressMobScreenState extends State<SellerAdressMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _addressController;
String? _selectedCountry;
  String? _selectedState;
  String? _selectedArea;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
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
                SizedBox(height: 20.v),
                SizedBox(
                  height: 1600.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildAddressColumn(context),
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
                  _buildDropDowns(context),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: CustomTextFormField(
                      controller: _addressController,
                      hintText: "msg_enter_complete_address".tr,
                      hintStyle: CustomTextStyles.bodyLargePoppinsGray700,
                      maxLines: 3,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 15.v,
                      ),
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
                    onPressed: () {
                      _submit();
                    },
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

  Widget _buildDropDowns(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Selector<SellerAdressMobProvider, SellerAdressMobModel?>( // Country Dropdown
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
                items: sellerAdressMobModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  setState(() {
                    _selectedCountry = value.title; 
                    print(_selectedCountry);// Update selected country
                  });
                  context.read<SellerAdressMobProvider>().onSelected(value);
                },
                validator: (value) {
                  if (value == null || value.title.isEmpty) {
                    return 'Please select a country.';
                  }
                  return null;
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Selector<SellerAdressMobProvider, SellerAdressMobModel?>( // State Dropdown
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
                items: sellerAdressMobModelObj?.dropdownItemList1 ?? [],
                onChanged: (value) {
                  setState(() {
                    _selectedState = value.title; // Update selected state
                                        print(_selectedState);// Update selected country

                  });
                  context.read<SellerAdressMobProvider>().onSelected1(value);
                },
                validator: (value) {
                  if (value == null || value.title.isEmpty) {
                    return 'Please select a state.';
                  }
                  return null;
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Selector<SellerAdressMobProvider, SellerAdressMobModel?>( // Area Dropdown
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
                items: sellerAdressMobModelObj?.dropdownItemList2 ?? [],
                onChanged: (value) {
                  setState(() {
                    _selectedArea = value.title; // Update selected area
                                        print(_selectedArea);// Update selected country

                  });
                  context.read<SellerAdressMobProvider>().onSelected2(value);
                },
                validator: (value) {
                  if (value == null || value.title.isEmpty) {
                    return 'Please select an area.';
                  }
                  return null;
                },
              );
            },
          ),
        ],
      ),
    );
  }
  // Widget _buildDropDowns(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 5.h,
  //       right: 6.h,
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Selector<SellerAdressMobProvider, SellerAdressMobModel?>(
  //           selector: (
  //             context,
  //             provider,
  //           ) =>
  //               provider.sellerAdressMobModelObj,
  //           builder: (context, sellerAdressMobModelObj, child) {
  //             return CustomDropDown(
  //               icon: Container(
  //                 margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
  //                 child: CustomImageView(
  //                   imagePath: ImageConstant.imgArrowdown,
  //                   height: 24.adaptSize,
  //                   width: 24.adaptSize,
  //                 ),
  //               ),
  //               hintText: "lbl_pakistan".tr,
  //               items: sellerAdressMobModelObj?.dropdownItemList ?? [],
  //               onChanged: (value) {
  //                 context.read<SellerAdressMobProvider>().onSelected(value);
  //               },
  //             );
  //           },
  //         ),
  //         SizedBox(height: 16.v),
  //         Selector<SellerAdressMobProvider, SellerAdressMobModel?>(
  //           selector: (
  //             context,
  //             provider,
  //           ) =>
  //               provider.sellerAdressMobModelObj,
  //           builder: (context, sellerAdressMobModelObj, child) {
  //             return CustomDropDown(
  //               icon: Container(
  //                 margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
  //                 child: CustomImageView(
  //                   imagePath: ImageConstant.imgArrowdown,
  //                   height: 24.adaptSize,
  //                   width: 24.adaptSize,
  //                 ),
  //               ),
  //               hintText: "lbl_select_state".tr,
  //               items: sellerAdressMobModelObj?.dropdownItemList1 ?? [],
  //               onChanged: (value) {
  //                 context.read<SellerAdressMobProvider>().onSelected1(value);
  //               },
  //             );
  //           },
  //         ),
  //         SizedBox(height: 16.v),
  //         Selector<SellerAdressMobProvider, SellerAdressMobModel?>(
  //           selector: (
  //             context,
  //             provider,
  //           ) =>
  //               provider.sellerAdressMobModelObj,
  //           builder: (context, sellerAdressMobModelObj, child) {
  //             return CustomDropDown(
  //               icon: Container(
  //                 margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
  //                 child: CustomImageView(
  //                   imagePath: ImageConstant.imgArrowdown,
  //                   height: 24.adaptSize,
  //                   width: 24.adaptSize,
  //                 ),
  //               ),
  //               hintText: "lbl_select_area".tr,
  //               items: sellerAdressMobModelObj?.dropdownItemList2 ?? [],
  //               onChanged: (value) {
  //                 context.read<SellerAdressMobProvider>().onSelected2(value);
  //               },
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // Combine data from the previous screen and this screen
      final combinedModel = CombinedModel(
        sellerProfile: widget.sellerProfile,
  country: _selectedCountry!,
            state: _selectedState!,
            area: _selectedArea!,
        fullAddress: _addressController.text,
      );

      // Navigate to the account info screen passing the combined model
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SellerAccountMobScreen(combinedModel: combinedModel),
        ),
      );
    }
  }

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
  }
}
class CombinedModel {
  final SellerProfile sellerProfile;
  final String country;
  final String state;
  final String area;
  final String fullAddress;

  CombinedModel({
    required this.sellerProfile,
    required this.country,
    required this.state,
    required this.area,
    required this.fullAddress,
  });
}