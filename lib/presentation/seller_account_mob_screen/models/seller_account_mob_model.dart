import 'package:bidbuyweb/domain/models/selection_popup_model.dart';

class SellerAccountMobModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "HBL",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "MCB",
    ),
    SelectionPopupModel(
      id: 3,
      title: "ALHabib",
    )
  ];
}
