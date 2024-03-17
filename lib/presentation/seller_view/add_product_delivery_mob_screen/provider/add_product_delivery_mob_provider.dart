import 'package:flutter/material.dart';
import '../models/add_product_delivery_mob_model.dart';
/// A provider class for the AddProductDeliveryMobScreen.
///
/// This provider manages the state of the AddProductDeliveryMobScreen, including the
/// current addProductDeliveryMobModelObj
class AddProductDeliveryMobProvider extends ChangeNotifier {
  TextEditingController timeController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  AddProductDeliveryMobModel addProductDeliveryMobModelObj =
      AddProductDeliveryMobModel();

  @override
  void dispose() {
    super.dispose();
    timeController.dispose();
    emailController.dispose();
  }
}
