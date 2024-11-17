import 'dart:typed_data';
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_adress_mob_screen/seller_adress_mob_screen.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
  // TextEditingController? _idCardFrontController;
  // TextEditingController? _idCardBackController;
  Uint8List? _idCardFrontImage;
  Uint8List? _idCardBackImage;

  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    // _idCardFrontController = TextEditingController();
    // _idCardBackController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController?.dispose();
    _emailController?.dispose();
    _phoneController?.dispose();
    // _idCardFrontController?.dispose();
    // _idCardBackController?.dispose();
    super.dispose();
  }

  Future<void> _pickImage(bool isFront) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final Uint8List fileBytes =
          await pickedFile.readAsBytes(); // Convert to Uint8List
      setState(() {
        if (isFront) {
          _idCardFrontImage = fileBytes;
        } else {
          _idCardBackImage = fileBytes;
        }
      });
    }
  }

  Future<String?> _uploadImage(Uint8List imageData, String imageName) async {
    try {
      // Check if the image is too large
      if (imageData.lengthInBytes > 5 * 1024 * 1024) {
        print("Image size exceeds the maximum allowed limit of 5 MB.");
        return null;
      }

      final ref = FirebaseStorage.instance.ref().child('id_cards/$imageName');
      final uploadTask =
          ref.putData(imageData); // Uploading image as bytes (Uint8List)

      final snapshot = await uploadTask.whenComplete(() => null);
      final downloadUrl =
          await snapshot.ref.getDownloadURL(); // Get download URL

      return downloadUrl; // Return the URL of the uploaded image
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
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
                  // _buildProfileInformationField(
                  //   context,
                  //   "lbl_id_card_front".tr,
                  //   _idCardFrontController,
                  //   "Enter ID Card Front",
                  // ),
                  // SizedBox(height: 19.v),
                  // _buildProfileInformationField(
                  //   context,
                  //   "lbl_id_card_back".tr,
                  //   _idCardBackController,
                  //   "Enter ID Card Back",
                  // ),
                  _buildImageUploadSection("Upload ID Card Front", true),
                  _buildImageUploadSection("Upload ID Card Back", false),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    height: 35.v,
                    text: "lbl_next".tr,
                    margin: EdgeInsets.only(right: 9.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryTL17Decoration,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                    onPressed: () async {
                      // Validate inputs before submitting
                      if (_validateInputs()) {
                        print("Submitting");
                        await _submit();
                        print("Submitted");
                      }
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

// Validation functions
  bool _validateInputs() {
    final name = _nameController?.text;
    final email = _emailController!.text;
    final phone = _phoneController!.text;

    // Validate Name
    if (name!.isEmpty) {
      _showError("Name cannot be empty");
      return false;
    }

    // Validate Email using isValidEmail function
    if (!isValidEmail(email, isRequired: true)) {
      _showError("Please enter a valid email");
      return false;
    }

    // Validate Phone using isNumeric function
    if (!isNumeric(phone, isRequired: true)) {
      _showError("Please enter a valid phone number");
      return false;
    }

    return true;
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      String? frontImageUrl;
      String? backImageUrl;

      // Check if images are picked and upload them
      if (_idCardFrontImage != null) {
        frontImageUrl = await _uploadImage(
            _idCardFrontImage!, 'id_card_front_${_nameController!.text}');
      }

      if (_idCardBackImage != null) {
        backImageUrl = await _uploadImage(
            _idCardBackImage!, 'id_card_back_${_nameController!.text}');
      }

      // After uploading both images, check if they are uploaded successfully
      if (frontImageUrl != null && backImageUrl != null) {
        // Create a seller profile with the image URLs
        SellerProfile profile = SellerProfile(
          name: _nameController!.text,
          email: _emailController!.text,
          phone: _phoneController!.text,
          idCardFront: frontImageUrl,
          idCardBack: backImageUrl,
        );

        // Navigate to the next screen with the seller profile
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SellerAdressMobScreen(sellerProfile: profile),
          ),
        );
      } else {
        print("Error: Image upload failed.");
      }
    }
  }

  Widget _buildImageUploadSection(String label, bool isFront) {
    Uint8List? image = isFront ? _idCardFrontImage : _idCardBackImage;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: CustomTextStyles.bodyMediumGray90001),
        SizedBox(height: 8.v),
        GestureDetector(
          onTap: () => _pickImage(isFront),
          child: Container(
            height: 150.v,
            width: 150.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: image != null
                  ? Image.memory(image)
                  : Icon(Icons.upload, size: 50),
            ),
          ),
        ),
      ],
    );
  }
}
