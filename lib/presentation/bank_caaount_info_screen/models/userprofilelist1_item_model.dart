import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.bankName,
    this.userName,
    this.id,
  }) {
    bankName = bankName ?? Rx("Bank of Amrica - 0182128xxx");
    userName = userName ?? Rx("Jonas Macroni");
    id = id ?? Rx("");
  }

  Rx<String>? bankName;

  Rx<String>? userName;

  Rx<String>? id;
}
