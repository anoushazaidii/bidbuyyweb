// import 'package:another_stepper/dto/stepper_data.dart';
// import 'package:another_stepper/widgets/another_stepper.dart';
// import 'package:bidbuyweb/core/app_export.dart';
// import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
// import 'package:flutter/material.dart';

// class AddProductDeliveryMobScreen extends StatefulWidget {
//   const AddProductDeliveryMobScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   AddProductDeliveryMobScreenState createState() =>
//       AddProductDeliveryMobScreenState();
//   static Widget builder(BuildContext context) {
//     return const AddProductDeliveryMobScreen();
//   }
// }

// class AddProductDeliveryMobScreenState
//     extends State<AddProductDeliveryMobScreen> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
//             child: Column(
//               children: [
//                 _buildFrameOne(context),
//                 SizedBox(height: 68.v),
//                 SizedBox(
//                   height: 1716.v,
//                   width: double.maxFinite,
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       Align(
//                         alignment: Alignment.topCenter,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 16.h,
//                             vertical: 17.v,
//                           ),
//                           decoration: AppDecoration.fillGray,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Row(
//                                   children: [
//                                     Text(
//                                       "lbl_sell".tr,
//                                       style:
//                                           CustomTextStyles.bodyMediumBlack900_2,
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgArrowRight,
//                                       height: 14.adaptSize,
//                                       width: 14.adaptSize,
//                                       margin: EdgeInsets.only(left: 4.h),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.only(left: 6.h),
//                                       child: Text(
//                                         "lbl_add_product".tr,
//                                         style: CustomTextStyles
//                                             .bodyMediumBlack900_1,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(height: 29.v),
//                               AnotherStepper(
//                                 iconHeight: 41,
//                                 iconWidth: 45,
//                                 stepperDirection: Axis.horizontal,
//                                 activeIndex: 0,
//                                 barThickness: 1,
//                                 inverted: true,
//                                 stepperList: [
//                                   StepperData(
//                                     iconWidget: Column(
//                                       children: [
//                                         SizedBox(
//                                           height: 27.adaptSize,
//                                           width: 27.adaptSize,
//                                           child: Stack(
//                                             alignment: Alignment.bottomRight,
//                                             children: [
//                                               Align(
//                                                 alignment: Alignment.topLeft,
//                                                 child: Container(
//                                                   height: 25.adaptSize,
//                                                   width: 25.adaptSize,
//                                                   padding: EdgeInsets.all(6.h),
//                                                   decoration: AppDecoration
//                                                       .white
//                                                       .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder11,
//                                                   ),
//                                                   child: CustomImageView(
//                                                     imagePath: ImageConstant
//                                                         .imgIconPencilAltPrimary,
//                                                     height: 11.adaptSize,
//                                                     width: 11.adaptSize,
//                                                     alignment:
//                                                         Alignment.topRight,
//                                                   ),
//                                                 ),
//                                               ),
//                                               CustomImageView(
//                                                 imagePath: ImageConstant
//                                                     .imgEpSuccessFilled,
//                                                 height: 11.adaptSize,
//                                                 width: 11.adaptSize,
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(top: 3.v),
//                                           child: Text(
//                                             "lbl_description".tr,
//                                             style: theme.textTheme.labelSmall,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   StepperData(
//                                     iconWidget: Column(
//                                       children: [
//                                         SizedBox(
//                                           height: 27.adaptSize,
//                                           width: 27.adaptSize,
//                                           child: Stack(
//                                             alignment: Alignment.bottomRight,
//                                             children: [
//                                               Align(
//                                                 alignment: Alignment.topLeft,
//                                                 child: Container(
//                                                   height: 25.adaptSize,
//                                                   width: 25.adaptSize,
//                                                   padding: EdgeInsets.all(6.h),
//                                                   decoration: AppDecoration
//                                                       .white
//                                                       .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder11,
//                                                   ),
//                                                   child: CustomImageView(
//                                                     imagePath: ImageConstant
//                                                         .imgIconCursorClick,
//                                                     height: 11.adaptSize,
//                                                     width: 11.adaptSize,
//                                                     alignment:
//                                                         Alignment.topRight,
//                                                   ),
//                                                 ),
//                                               ),
//                                               CustomImageView(
//                                                 imagePath: ImageConstant
//                                                     .imgEpSuccessFilled,
//                                                 height: 11.adaptSize,
//                                                 width: 11.adaptSize,
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(top: 3.v),
//                                           child: Text(
//                                             "lbl_categories".tr,
//                                             style: theme.textTheme.labelSmall,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   StepperData(
//                                     iconWidget: Column(
//                                       children: [
//                                         Container(
//                                           height: 25.adaptSize,
//                                           width: 25.adaptSize,
//                                           padding: EdgeInsets.all(6.h),
//                                           decoration:
//                                               AppDecoration.accent.copyWith(
//                                             borderRadius: BorderRadiusStyle
//                                                 .roundedBorder11,
//                                           ),
//                                           child: CustomImageView(
//                                             imagePath: ImageConstant
//                                                 .imgIconCameraGray50,
//                                             height: 11.adaptSize,
//                                             width: 11.adaptSize,
//                                             alignment: Alignment.topRight,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(top: 4.v),
//                                           child: Text(
//                                             "lbl_photos".tr,
//                                             style: theme.textTheme.labelSmall,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   StepperData(
//                                     iconWidget: Column(
//                                       children: [
//                                         Container(
//                                           height: 25.adaptSize,
//                                           width: 25.adaptSize,
//                                           padding: EdgeInsets.all(6.h),
//                                           decoration:
//                                               AppDecoration.white.copyWith(
//                                             borderRadius: BorderRadiusStyle
//                                                 .roundedBorder11,
//                                           ),
//                                           child: CustomImageView(
//                                             imagePath:
//                                                 ImageConstant.imgIconCube,
//                                             height: 11.adaptSize,
//                                             width: 11.adaptSize,
//                                             alignment: Alignment.topRight,
//                                           ),
//                                         ),
//                                         Text(
//                                           "lbl_delivery".tr,
//                                           style: CustomTextStyles
//                                               .titleMediumMulishGray90001,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 32.v),
//                               _buildTimeColumn(context),
//                               SizedBox(height: 32.v),
//                             ],
//                           ),
//                         ),
//                       ),
//                       _buildSubtractColumn(context),
//                       _buildFrameColumn(context),
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
//   Widget _buildTextField(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 4.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "lbl_shipping_time".tr,
//             style: CustomTextStyles.titleMediumMulishGray90001_1,
//           ),
//           SizedBox(height: 4.v),
//          CustomTextFormField(
//                 // controller: timeController,
//                 hintText: "lbl_specify_a_date".tr,
//                 contentPadding: EdgeInsets.symmetric(
//                   horizontal: 16.h,
//                   vertical: 14.v,
//                 ),
//                 borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
//                 filled: true,
//                 fillColor: appTheme.gray700,
//               );
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildTimeColumn(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 26.h,
//         vertical: 34.v,
//       ),
//       decoration: AppDecoration.fillOnPrimary.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder19,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           SizedBox(height: 7.v),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: 2.h),
//               child: Text(
//                 "msg_select_delivery".tr,
//                 style: CustomTextStyles.titleMediumMulishGray900,
//               ),
//             ),
//           ),
//           SizedBox(height: 28.v),
//           Padding(
//             padding: EdgeInsets.only(left: 4.h),
//             child: Consumer<AddProductDeliveryMobProvider>(
//               builder: (context, provider, child) {
//                 return ListView.separated(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   separatorBuilder: (
//                     context,
//                     index,
//                   ) {
//                     return SizedBox(
//                       height: 16.v,
//                     );
//                   },
//                   itemCount: provider
//                       .addProductDeliveryMobModelObj.deliveryItemList.length,
//                   itemBuilder: (context, index) {
//                     DeliveryItemModel model = provider
//                         .addProductDeliveryMobModelObj.deliveryItemList[index];
//                     return DeliveryItemWidget(
//                       model,
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 16.v),
//           _buildTextField(context),
//           SizedBox(height: 35.v),
//           CustomElevatedButton(
//             height: 52.v,
//             width: 186.h,
//             text: "lbl_next".tr,
//             buttonStyle: CustomButtonStyles.none,
//             decoration: CustomButtonStyles
//                 .gradientOnPrimaryContainerToPrimaryDecoration,
//             buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildSubtractColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: 15.h,
//           vertical: 120.v,
//         ),
//         decoration: AppDecoration.fillGray200,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             SizedBox(height: 64.v),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 39.adaptSize,
//                   width: 39.adaptSize,
//                   decoration: AppDecoration.fillOnPrimary.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder19,
//                   ),
//                   child: CustomImageView(
//                     imagePath: ImageConstant.imgSubtractPrimary,
//                     height: 39.adaptSize,
//                     width: 39.adaptSize,
//                     radius: BorderRadius.circular(
//                       19.h,
//                     ),
//                     alignment: Alignment.center,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 2.h,
//                     bottom: 9.v,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomImageView(
//                         imagePath: ImageConstant.imgText,
//                         height: 22.v,
//                         width: 76.h,
//                       ),
//                       Text(
//                         "msg_the_wise_choice".tr.toUpperCase(),
//                         style: CustomTextStyles.robotoGray90001,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 7.v),
//             Container(
//               width: 348.h,
//               margin: EdgeInsets.only(
//                 left: 1.h,
//                 right: 10.h,
//               ),
//               child: Text(
//                 "msg_join_online_auctions".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: theme.textTheme.bodyLarge!.copyWith(
//                   height: 1.38,
//                 ),
//               ),
//             ),
//             SizedBox(height: 7.v),
//             Padding(
//               padding: EdgeInsets.only(left: 1.h),
//               child: Row(
//                 children: [
//                   CustomIconButton(
//                     height: 28.adaptSize,
//                     width: 28.adaptSize,
//                     padding: EdgeInsets.all(7.h),
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgTrash,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 12.h),
//                     child: CustomIconButton(
//                       height: 28.adaptSize,
//                       width: 28.adaptSize,
//                       padding: EdgeInsets.all(7.h),
//                       decoration: IconButtonStyleHelper.fillPrimary,
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgFacebook,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 12.h),
//                     child: CustomIconButton(
//                       height: 28.adaptSize,
//                       width: 28.adaptSize,
//                       padding: EdgeInsets.all(7.h),
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgInfo,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 12.h),
//                     child: CustomIconButton(
//                       height: 28.adaptSize,
//                       width: 28.adaptSize,
//                       padding: EdgeInsets.all(6.h),
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgUser,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24.v),
//             Padding(
//               padding: EdgeInsets.only(left: 1.h),
//               child: Row(
//                 children: [
//                   Text(
//                     "lbl_company".tr.toUpperCase(),
//                     style: theme.textTheme.titleSmall,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 95.h),
//                     child: Text(
//                       "lbl_help".tr.toUpperCase(),
//                       style: theme.textTheme.titleSmall,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 15.v),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 1.h,
//                 right: 64.h,
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     width: 54.h,
//                     margin: EdgeInsets.only(bottom: 18.v),
//                     child: Text(
//                       "msg_about_features".tr,
//                       maxLines: 7,
//                       overflow: TextOverflow.ellipsis,
//                       style: theme.textTheme.bodyMedium!.copyWith(
//                         height: 1.14,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 114.h,
//                     margin: EdgeInsets.only(left: 125.h),
//                     child: Text(
//                       "msg_customer_support_delivery".tr,
//                       maxLines: 8,
//                       overflow: TextOverflow.ellipsis,
//                       style: theme.textTheme.bodyMedium!.copyWith(
//                         height: 1.14,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 5.v),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 1.h,
//                 right: 76.h,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "lbl_faq".tr.toUpperCase(),
//                     style: theme.textTheme.titleSmall,
//                   ),
//                   Text(
//                     "lbl_resources".tr.toUpperCase(),
//                     style: theme.textTheme.titleSmall,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 14.v),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 1.h,
//                 right: 47.h,
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 114.h,
//                     child: Text(
//                       "msg_account_manage".tr,
//                       maxLines: 7,
//                       overflow: TextOverflow.ellipsis,
//                       style: theme.textTheme.bodyMedium!.copyWith(
//                         height: 1.14,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 131.h,
//                     margin: EdgeInsets.only(left: 65.h),
//                     child: Text(
//                       "msg_free_ebook_development".tr,
//                       maxLines: 7,
//                       overflow: TextOverflow.ellipsis,
//                       style: theme.textTheme.bodyMedium!.copyWith(
//                         height: 1.14,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 36.v),
//             Divider(
//               indent: 1.h,
//             ),
//             SizedBox(height: 15.v),
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 "msg_shop_co_2000_2023".tr,
//                 style: theme.textTheme.bodyMedium,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildFrameColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 16.h),
//         padding: EdgeInsets.symmetric(
//           horizontal: 23.h,
//           vertical: 28.v,
//         ),
//         decoration: AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder19,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 width: 279.h,
//                 margin: EdgeInsets.only(right: 31.h),
//                 child: Text(
//                   "msg_stay_upto_date_about".tr,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: theme.textTheme.headlineLarge!.copyWith(
//                     height: 1.09,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 31.v),
//             Selector<AddProductDeliveryMobProvider, TextEditingController?>(
//               selector: (
//                 context,
//                 provider,
//               ) =>
//                   provider.emailController,
//               builder: (context, emailController, child) {
//                 return CustomTextFormField(
//                   controller: emailController,
//                   hintText: "msg_enter_your_email".tr,
//                   textInputAction: TextInputAction.done,
//                   textInputType: TextInputType.emailAddress,
//                   prefix: Container(
//                     margin: EdgeInsets.fromLTRB(16.h, 11.v, 12.h, 11.v),
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgFrameBlack90020x20,
//                       height: 20.adaptSize,
//                       width: 20.adaptSize,
//                     ),
//                   ),
//                   prefixConstraints: BoxConstraints(
//                     maxHeight: 42.v,
//                   ),
//                   validator: (value) {
//                     if (value == null ||
//                         (!isValidEmail(value, isRequired: true))) {
//                       return "err_msg_please_enter_valid_email".tr;
//                     }
//                     return null;
//                   },
//                   borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
//                   filled: true,
//                   fillColor: theme.colorScheme.onPrimary.withOpacity(1),
//                 );
//               },
//             ),
//             SizedBox(height: 12.v),
//             CustomElevatedButton(
//               text: "msg_subscribe_to_newsletter".tr,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildIconCursorClick(
//     BuildContext context, {
//     required String iconCursorClick,
//   }) {
//     return SizedBox(
//       height: 27.adaptSize,
//       width: 27.adaptSize,
//       child: Stack(
//         alignment: Alignment.bottomRight,
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               height: 25.adaptSize,
//               width: 25.adaptSize,
//               padding: EdgeInsets.all(6.h),
//               decoration: AppDecoration.white.copyWith(
//                 borderRadius: BorderRadiusStyle.roundedBorder11,
//               ),
//               child: CustomImageView(
//                 imagePath: iconCursorClick,
//                 height: 11.adaptSize,
//                 width: 11.adaptSize,
//                 alignment: Alignment.topRight,
//               ),
//             ),
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgEpSuccessFilled,
//             height: 11.adaptSize,
//             width: 11.adaptSize,
//             alignment: Alignment.bottomRight,
//           ),
//         ],
//       ),
//     );
//   }
// }
