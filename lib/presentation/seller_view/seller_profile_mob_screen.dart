import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// Model to store seller profile information
class SellerProfile {
  final String name;
  final String email;
  final String phone;
  final String idCardFront;
  final String idCardBack;

  SellerProfile({
    required this.name,
    required this.email,
    required this.phone,
    required this.idCardFront,
    required this.idCardBack,
  });
}

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

  TextEditingController? _nameController;
  TextEditingController? _emailController;
  TextEditingController? _phoneController;
  TextEditingController? _idCardFrontController;
  TextEditingController? _idCardBackController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _idCardFrontController = TextEditingController();
    _idCardBackController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController?.dispose();
    _emailController?.dispose();
    _phoneController?.dispose();
    _idCardFrontController?.dispose();
    _idCardBackController?.dispose();
    super.dispose();
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
                    _nameController,
                    "Enter Name",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_email2".tr,
                    _emailController,
                    "Enter Email",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_phone2".tr,
                    _phoneController,
                    "Enter Phone",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_id_card_front".tr,
                    _idCardFrontController,
                    "Enter ID Card Front",
                  ),
                  SizedBox(height: 19.v),
                  _buildProfileInformationField(
                    context,
                    "lbl_id_card_back".tr,
                    _idCardBackController,
                    "Enter ID Card Back",
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

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, create a SellerProfile object
      // and pass it to the next screen
      SellerProfile profile = SellerProfile(
        name: _nameController!.text,
        email: _emailController!.text,
        phone: _phoneController!.text,
        idCardFront: _idCardFrontController!.text,
        idCardBack: _idCardBackController!.text,
      );

      // Navigate to the next screen passing the profile information
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SellerAdressMobScreen(sellerProfile: profile,),
        ),
      );
    }
  }
}

class UploadPicWidget extends StatelessWidget {
  final String text;

  const UploadPicWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.4,
              child: Text(
                text,
                style: CustomTextStyles.bodyLargePoppinsGray90001,
              ),
            ),
            SizedBox(height: 1.v),
            Container(
              height: 40.v,
              width: 150.h,
              padding: EdgeInsets.symmetric(vertical: 7.v),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbolsUploadSharp,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
