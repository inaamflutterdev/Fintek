import '../../../core/app_export.dart';
import 'transactions_item_model.dart';

/// This class defines the variables used in the [asset_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AssetPageModel {
  Rx<List<TransactionsItemModel>> transactionsItemList = Rx([
    TransactionsItemModel(
        labelNumber: "Rp 200.000".obs,
        descriptionLabel: "Buy “APPL” Stock".obs,
        dateLabel: "TUE 22 Jun 2020".obs),
    TransactionsItemModel(
        labelNumber: "Rp 150.000".obs,
        descriptionLabel: "Sell “TLKM” Stock".obs,
        dateLabel: "TUE 22 Jun 2020".obs),
    TransactionsItemModel(
        labelNumber: "Rp 1.000.240".obs,
        descriptionLabel: "Buy “FB” Stock".obs,
        dateLabel: "TUE 22 Jun 2020".obs),
    TransactionsItemModel(
        labelNumber: "Rp 1.000.240".obs,
        descriptionLabel: "Sell “APPL” Stock".obs,
        dateLabel: "TUE 22 Jun 2020".obs)
  ]);
}
