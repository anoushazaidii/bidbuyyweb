import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/seller_product_description_mob_model.dart';

/// A provider class for the SellerProductDescriptionMobScreen.
///
/// This provider manages the state of the SellerProductDescriptionMobScreen, including the
/// current sellerProductDescriptionMobModelObj
class SellerProductDescriptionMobProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController availabilityvalueController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  SellerProductDescriptionMobModel sellerProductDescriptionMobModelObj =
      SellerProductDescriptionMobModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    descriptionController.dispose();
    availabilityvalueController.dispose();
    priceController.dispose();
    emailController.dispose();
  }
}
