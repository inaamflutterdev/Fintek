import '../../../core/app_export.dart';

/// This class is used in the [cardstocklist_item_widget] screen.
class CardstocklistItemModel {
  CardstocklistItemModel({
    this.image,
    this.stockLabel,
    this.priceLabel,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage4);
    stockLabel = stockLabel ?? Rx("Gold");
    priceLabel = priceLabel ?? Rx("30% return");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? stockLabel;

  Rx<String>? priceLabel;

  Rx<String>? id;
}
