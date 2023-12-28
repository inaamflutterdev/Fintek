import '../../../core/app_export.dart';
import 'cardstocklist_item_model.dart';
import 'investmentguidenewslist_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {
  Rx<List<CardstocklistItemModel>> cardstocklistItemList = Rx([
    CardstocklistItemModel(
        image: ImageConstant.imgImage4.obs,
        stockLabel: "Gold".obs,
        priceLabel: "30% return".obs)
  ]);

  Rx<List<InvestmentguidenewslistItemModel>> investmentguidenewslistItemList =
      Rx([
    InvestmentguidenewslistItemModel(
        title: "Basic type of investments".obs,
        description:
            "This is how you set your foot for 2020 Stock market recession. What’s next..."
                .obs,
        image: ImageConstant.imgEllipse740.obs),
    InvestmentguidenewslistItemModel(
        title: "How much can you start wit..".obs,
        description:
            "What do you like to see? It’s a very different market from 2018. The way..."
                .obs,
        image: ImageConstant.imgEllipse74061x61.obs)
  ]);
}
