import '../../../core/app_export.dart';

/// This class is used in the [investmentguidenewslist_item_widget] screen.
class InvestmentguidenewslistItemModel {
  InvestmentguidenewslistItemModel({
    this.title,
    this.description,
    this.image,
    this.id,
  }) {
    title = title ?? Rx("Basic type of investments");
    description = description ??
        Rx("This is how you set your foot for 2020 Stock market recession. What’s next...");
    image = image ?? Rx(ImageConstant.imgEllipse740);
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? description;

  Rx<String>? image;

  Rx<String>? id;
}
