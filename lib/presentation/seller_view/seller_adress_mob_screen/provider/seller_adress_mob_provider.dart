import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../models/seller_adress_mob_model.dart';

/// A provider class for the SellerAdressMobScreen.
///
/// This provider manages the state of the SellerAdressMobScreen, including the
/// current sellerAdressMobModelObj
class SellerAdressMobProvider extends ChangeNotifier {
  TextEditingController addressController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  SellerAdressMobModel sellerAdressMobModelObj = SellerAdressMobModel();

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    emailController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in sellerAdressMobModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in sellerAdressMobModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in sellerAdressMobModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
