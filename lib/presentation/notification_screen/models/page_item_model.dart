import '../../../core/app_export.dart';

/// This class is used in the [page_item_widget] screen.
class PageItemModel {
  PageItemModel({
    this.stockImage,
    this.stockText,
    this.timeText,
    this.id,
  }) {
    stockImage = stockImage ?? Rx(ImageConstant.imgRectangle57);
    stockText =
        stockText ?? Rx("Apple stocks just increased\nCheck it out now.");
    timeText = timeText ?? Rx("15min ago");
    id = id ?? Rx("");
  }

  Rx<String>? stockImage;

  Rx<String>? stockText;

  Rx<String>? timeText;

  Rx<String>? id;
}
