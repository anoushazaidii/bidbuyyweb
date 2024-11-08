// import 'dart:math';

// import 'package:bidbuyweb/backend/user_auth/firebase_auth_servies.dart';
// import 'package:bidbuyweb/core/app_export.dart';
// import 'package:bidbuyweb/domain/models/seller_model.dart';
// import 'package:bidbuyweb/presentation/seller_account_mob_screen/models/seller_account_mob_model.dart';
// import 'package:bidbuyweb/presentation/seller_account_mob_screen/provider/seller_account_mob_provider.dart';
// import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
// import 'package:bidbuyweb/widgets/app_bar/appBar_widget.dart';
// import 'package:bidbuyweb/widgets/custom_drop_down.dart';
// import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
// import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
// import 'package:flutter/material.dart';

// class SellerAccountMobScreen extends StatefulWidget {
//   final CombinedModel combinedModel; // Accept combined model as parameter

//   const SellerAccountMobScreen({Key? key, required this.combinedModel})
//       : super(key: key);

//   @override
//   SellerAccountMobScreenState createState() => SellerAccountMobScreenState();
//   static Widget builder(BuildContext context, CombinedModel combinedModel) {
//     return SellerAccountMobScreen(combinedModel: combinedModel);
//   }
// }

// class SellerAccountMobScreenState extends State<SellerAccountMobScreen> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController ibanController = TextEditingController();
//   TextEditingController accountNumberController = TextEditingController();
//   TextEditingController branchCodeController = TextEditingController();
//   TextEditingController fullNameController = TextEditingController();
//   String selectedBank = '';
//   final FirebaseAuthService authService = FirebaseAuthService();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBarWidget(),
//         body: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             padding: EdgeInsets.only(top: 15.v),
//             child: Column(
//               children: [
//                 SizedBox(height: 20.v),
//                 SizedBox(
//                   height: 1600.v,
//                   width: double.maxFinite,
//                   child: Column(
//                     children: [
//                       _buildFullNameColumn(context),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildAccountInformation(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(right: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "lbl_full_name2".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsGray90001,
//                   ),
//                   TextSpan(
//                     text: "lbl".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsRed600,
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(height: 5.v),
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: CustomTextFormField(
//               controller: TextEditingController(text: fullNameController.text),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildIban(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(right: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "lbl_iban2".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsGray90001,
//                   ),
//                   TextSpan(
//                     text: "lbl".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsRed600,
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(height: 5.v),
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: Selector<SellerAccountMobProvider, TextEditingController?>(
//               selector: (
//                 context,
//                 provider,
//               ) =>
//                   provider.editTextController,
//               builder: (context, editTextController, child) {
//                 return CustomTextFormField(
//                   controller: editTextController,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildAccountNumber(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(right: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "lbl_account_number2".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsGray90001,
//                   ),
//                   TextSpan(
//                     text: "lbl".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsRed600,
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(height: 5.v),
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: Selector<SellerAccountMobProvider, TextEditingController?>(
//               selector: (
//                 context,
//                 provider,
//               ) =>
//                   provider.editTextController1,
//               builder: (context, editTextController1, child) {
//                 return CustomTextFormField(
//                   controller: editTextController1,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildBranchCode(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(right: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "lbl_branch_code2".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsGray90001,
//                   ),
//                   TextSpan(
//                     text: "lbl".tr,
//                     style: CustomTextStyles.bodyMediumPoppinsRed600,
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(height: 5.v),
//           Padding(
//             padding: EdgeInsets.only(left: 6.h),
//             child: Selector<SellerAccountMobProvider, TextEditingController?>(
//               selector: (
//                 context,
//                 provider,
//               ) =>
//                   provider.editTextController2,
//               builder: (context, editTextController2, child) {
//                 return CustomTextFormField(
//                   controller: editTextController2,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildFullNameColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: 16.h,
//           vertical: 17.v,
//         ),
//         decoration: AppDecoration.fillGray,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildAccountInformation(context),
//             _buildIban(context),
//             _buildAccountNumber(context),
//             _buildBranchCode(context),
//             CustomElevatedButton(
//               height: 35.v,
//               text: "lbl_next".tr,
//               margin: EdgeInsets.only(right: 9.h),
//               buttonStyle: CustomButtonStyles.none,
//               decoration: CustomButtonStyles
//                   .gradientOnPrimaryContainerToPrimaryTL17Decoration,
//               buttonTextStyle: theme.textTheme.labelMedium!,
//               onPressed: () {
//                 SellerModel newModel = SellerModel(
//                   name: widget.combinedModel.sellerProfile.name,
//                   phone: widget.combinedModel.sellerProfile.phone,
//                   idCardBackImage:
//                       widget.combinedModel.sellerProfile.idCardBack,
//                   idCardFrontImage:
//                       widget.combinedModel.sellerProfile.idCardFront,
//                   uid: generateRandomUID(),
//                   fullName: fullNameController.text,
//                   iban: ibanController.text,
//                   accountNumber: accountNumberController.text,
//                   bank: selectedBank,
//                   branchCode: branchCodeController.text,
//                   email: widget.combinedModel.sellerProfile.email,
//                   country: widget.combinedModel.country,
//                   state: widget.combinedModel.state,
//                   area: widget.combinedModel.area,
//                   address: widget.combinedModel.fullAddress,
//                   deviceToken: "",
//                   profileImage: '',
//                 );

//                 authService.saveSellerDataToFirestore(newModel, context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String generateRandomUID() {
//     return Random().nextInt(1000000).toString();
//   }
// }


import 'dart:math';

import 'package:bidbuyweb/backend/user_auth/firebase_auth_servies.dart';
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/models/seller_model.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/models/seller_account_mob_model.dart';
import 'package:bidbuyweb/presentation/seller_account_mob_screen/provider/seller_account_mob_provider.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
import 'package:bidbuyweb/widgets/app_bar/appBar_widget.dart';
import 'package:bidbuyweb/widgets/custom_drop_down.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SellerAccountMobScreen extends StatefulWidget {
  final CombinedModel combinedModel;

  const SellerAccountMobScreen({Key? key, required this.combinedModel})
      : super(key: key);

  @override
  SellerAccountMobScreenState createState() => SellerAccountMobScreenState();
  static Widget builder(BuildContext context, CombinedModel combinedModel) {
    return SellerAccountMobScreen(combinedModel: combinedModel);
  }
}

class SellerAccountMobScreenState extends State<SellerAccountMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController ibanController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController branchCodeController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  String selectedBank = '';
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
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                SizedBox(height: 20.v),
                SizedBox(
                  height: 1600.v,
                  width: double.maxFinite,
                  child: Column(
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
            child: CustomTextFormField(
              controller: fullNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Full name is required';
                }
                return null;
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
            child: CustomTextFormField(
              controller: ibanController,
              validator: (value) {
                if (value == null || value.length != 24) {
                  return 'IBAN must be 24 characters long';
                }
                return null;
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
            child: CustomTextFormField(
              controller: accountNumberController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Account number is required';
                } else if (value.length < 6 || value.length > 20) {
                  return 'Account number must be between 6 and 20 characters long';
                }
                return null;
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
            child: CustomTextFormField(
              controller: branchCodeController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Branch code is required';
                }
                return null;
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
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAccountInformation(context),
            _buildIban(context),
            _buildAccountNumber(context),
            _buildBranchCode(context),
            CustomElevatedButton(
              height: 35.v,
              text: "lbl_next".tr,
              margin: EdgeInsets.only(right: 9.h),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles
                  .gradientOnPrimaryContainerToPrimaryTL17Decoration,
              buttonTextStyle: theme.textTheme.labelMedium!,
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Perform the action only if the form is valid
                  SellerModel newModel = SellerModel(
                    name: widget.combinedModel.sellerProfile.name,
                    phone: widget.combinedModel.sellerProfile.phone,
                    idCardBackImage:
                        widget.combinedModel.sellerProfile.idCardBack,
                    idCardFrontImage:
                        widget.combinedModel.sellerProfile.idCardFront,
                    uid: generateRandomUID(),
                    fullName: fullNameController.text,
                    iban: ibanController.text,
                    accountNumber: accountNumberController.text,
                    bank: selectedBank,
                    branchCode: branchCodeController.text,
                    email: widget.combinedModel.sellerProfile.email,
                    country: widget.combinedModel.country,
                    state: widget.combinedModel.state,
                    area: widget.combinedModel.area,
                    address: widget.combinedModel.fullAddress,
                    deviceToken: "",
                    profileImage: '',
                  );

                  authService.saveSellerDataToFirestore(newModel, context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

 
}
 String generateRandomUID() {
    final rand = Random();
    const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(10, (index) => characters[rand.nextInt(characters.length)]).join();
  }