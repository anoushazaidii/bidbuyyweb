import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/models/fortytwo_item_model.dart';
import 'package:bidbuyweb/domain/models/productcard_item_model.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_title_image.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_outlined_button.dart';
import 'package:bidbuyweb/widgets/fortytwo_item_widget.dart';
import 'package:bidbuyweb/widgets/productcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        SizeUtils.setScreenSize(
          BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          orientation,
        );

        // Return your main widget
        return const MaterialApp(
          home: HomepageDeskScreen(),
        );
      },
    ),
  );
}

class HomepageDeskScreen extends StatefulWidget {
  const HomepageDeskScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageDeskScreenState createState() => HomepageDeskScreenState();
}

class HomepageDeskScreenState extends State<HomepageDeskScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //  appBar: _buildAppBar(context),
      body: Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 24.v),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _offerMsgDesk(context),
                  _buildNavBar(context),
                  _buildBody(),
                  Container(
                    color: theme.colorScheme.primary,
                    height: 100,
                    child: const Center(
                      child: Text(
                        "ONGOING AUCTIONS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  _buildProductCard(context),
                  CustomElevatedButton(
                    height: 50,
                    width: 150,
                    text: "  View All  ",
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryDecoration,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 67.h),
                  _browseByCategoryWidget(context),
                  SizedBox(height: 27.v),
                  Subscribe_Widget(),
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.grey[200],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              top: 40.0,
              bottom: 20.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "YOUR GATEWAY TO",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    height: 0.9,
                  ),
                ),
                Text(
                  "EXCITING",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    height: 0.9,
                  ),
                ),
                Text(
                  "AUCTIONS",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    height: 0.9,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  "Discover treasures at BidBuyy - where bidding meets buying. Join online \nauctions and find unique items to buy and sell with excitement!",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildFrame(
                      context,
                      dynamicTextProp1: "23",
                      dynamicTextProp2: "hours",
                    ),
                    const SizedBox(width: 16.0),
                    _buildFrame(
                      context,
                      dynamicTextProp1: "05",
                      dynamicTextProp2: "days",
                    ),
                    const SizedBox(width: 16.0),
                    _buildFrame(
                      context,
                      dynamicTextProp1: "59",
                      dynamicTextProp2: "minutes",
                    ),
                    const SizedBox(width: 16.0),
                    _buildFrame(
                      context,
                      dynamicTextProp1: "5",
                      dynamicTextProp2: "seconds",
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                CustomElevatedButton(
                  height: 50,
                  width: 150,
                  text: "Bid Now",
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientOnPrimaryContainerToPrimaryDecoration,
                  buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image.asset(
                  "assets/images/img_ps5_slim_goedko.png",
                  width: 279.adaptSize,
                  height: 279.adaptSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 200.h,
      title: Row(
        children: [
          AppbarTitleImage(
            imagePath: ImageConstant.imgText,
            margin: EdgeInsets.only(left: 16.h),
          ),
          SizedBox(width: 15),
          const Text(
            "Home",
          ),
          SizedBox(width: 5),
          const Text("Auction"),
          SizedBox(width: 5),
          const Text("Sell"),
          SizedBox(
            width: 5,
          ),
          const Text("About Us"),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      actions: [
        Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Icon(Icons.search),
              Text("Search for products..."),
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGravityUiHeart,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 7.v,
            right: 2.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame24x24,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 7.v,
            right: 18.h,
          ),
        ),
      ],
    );
  }

  Widget _offerMsgDesk(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToPrimary,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            RichText(
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _homePageTextHeader(BuildContext context) {
    return SizedBox(
      height: 721.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.v),
                  Container(
                    width: 268.h,
                    margin: EdgeInsets.only(right: 89.h),
                    child: Text(
                      "msg_your_gateway_to",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 323.h,
                    margin: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "msg_discover_treasures",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeRobotoPrimary.copyWith(
                        height: 1.38,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 52.v,
                    text: "lbl_bid_now",
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryDecoration,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_23",
                            dynamicTextProp2: "lbl_hours",
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillGray900.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder31,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_05",
                                  style: CustomTextStyles
                                      .titleMediumPoppinsPrimaryContainer,
                                ),
                                Text(
                                  "lbl_days",
                                  style: CustomTextStyles
                                      .bodySmallPoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_59",
                            dynamicTextProp2: "lbl_minutes",
                          ),
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_35",
                            dynamicTextProp2: "lbl_seconds",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPs5SlimGoedko,
                    height: 279.adaptSize,
                    width: 279.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 66.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryContainerToPrimary,
              child: Text(
                "msg_ongoing_auctions".toUpperCase(),
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 50.0), // Adjust horizontal padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0, // Maximum width for each item
              mainAxisExtent: 350.0, // Adjust the mainAxisExtent for desktop
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              ProductcardItemModel model = ProductcardItemModel();
              return ProductcardItemWidget(
                model,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _browseByCategoryWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        children: [
          Text(
            "browse by categories".toUpperCase(),
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 124.v,
                crossAxisCount: 3,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                FortytwoItemModel model = FortytwoItemModel();
                return FortytwoItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String dynamicTextProp1,
    required String dynamicTextProp2,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: appTheme.gray900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder31,
      ),
      child: Container(
        height: 35.adaptSize,
        width: 35.adaptSize,
        decoration: AppDecoration.fillGray900.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder31,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                dynamicTextProp1,
                style: CustomTextStyles.titleMediumPoppinsPrimaryContainer
                    .copyWith(
                  color: theme.colorScheme.primaryContainer,
                  fontSize: 12.0, // Adjust the font size as needed
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                dynamicTextProp2,
                style:
                    CustomTextStyles.bodySmallPoppinsPrimaryContainer.copyWith(
                  color: theme.colorScheme.primaryContainer,
                  fontSize: 8.0, // Adjust the font size as needed
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
