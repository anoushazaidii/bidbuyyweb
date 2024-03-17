/// This class is used in the [delivery_item_widget] screen.
class DeliveryItemModel {
  DeliveryItemModel({
    this.selfPickupText,
    this.id,
  }) {
    selfPickupText = selfPickupText ?? "Self pickup";
    id = id ?? "";
  }

  String? selfPickupText;

  String? id;
}
