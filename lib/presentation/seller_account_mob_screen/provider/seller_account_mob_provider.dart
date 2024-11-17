import 'package:flutter/material.dart';
import '../models/seller_account_mob_model.dart';

/// A provider class for the SellerAccountMobScreen.
///
/// This provider manages the state of the SellerAccountMobScreen, including the
/// current sellerAccountMobModelObj
class SellerAccountMobProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  SellerAccountMobModel sellerAccountMobModelObj = SellerAccountMobModel();

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    emailController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in sellerAccountMobModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
