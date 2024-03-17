import 'delivery_item_model.dart';

class AddProductDeliveryMobModel {
  List<DeliveryItemModel> deliveryItemList = [
    DeliveryItemModel(selfPickupText: "Self pickup"),
    DeliveryItemModel(selfPickupText: "Online payment"),
    DeliveryItemModel(selfPickupText: "Courier cash on delivery")
  ];
}
