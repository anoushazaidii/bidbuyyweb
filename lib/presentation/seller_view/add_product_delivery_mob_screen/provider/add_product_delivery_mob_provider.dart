import 'package:flutter/material.dart';
import '../models/add_product_delivery_mob_model.dart';
/// A provider class for the AddProductDeliveryMobScreen.
///
/// This provider manages the state of the AddProductDeliveryMobScreen, including the
/// current addProductDeliveryMobModelObj
class AddProductDeliveryMobProvider extends ChangeNotifier {
  // Existing controllers
  TextEditingController timeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // New controllers for starting and ending times
  TextEditingController startingTimeController = TextEditingController();
  TextEditingController endingTimeController = TextEditingController();

  AddProductDeliveryMobModel addProductDeliveryMobModelObj =
      AddProductDeliveryMobModel();

  // Method to get starting and ending times as DateTime
  DateTime? getStartingTime() {
    return startingTimeController.text.isNotEmpty
        ? DateTime.parse(startingTimeController.text)
        : null;
  }

  DateTime? getEndingTime() {
    return endingTimeController.text.isNotEmpty
        ? DateTime.parse(endingTimeController.text)
        : null;
  }

  // Clear all controllers (optional, after saving to Firebase)
  void clearControllers() {
    timeController.clear();
    emailController.clear();
    startingTimeController.clear();
    endingTimeController.clear();
  }

  @override
  void dispose() {
    // Dispose all controllers
    timeController.dispose();
    emailController.dispose();
    startingTimeController.dispose();
    endingTimeController.dispose();
    super.dispose();
  }
}
