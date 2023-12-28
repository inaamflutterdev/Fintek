import '../../../core/app_export.dart';

/// This class is used in the [transactions_item_widget] screen.
class TransactionsItemModel {
  TransactionsItemModel({
    this.labelNumber,
    this.descriptionLabel,
    this.dateLabel,
    this.id,
  }) {
    labelNumber = labelNumber ?? Rx("Rp 200.000");
    descriptionLabel = descriptionLabel ?? Rx("Buy “APPL” Stock");
    dateLabel = dateLabel ?? Rx("TUE 22 Jun 2020");
    id = id ?? Rx("");
  }

  Rx<String>? labelNumber;

  Rx<String>? descriptionLabel;

  Rx<String>? dateLabel;

  Rx<String>? id;
}
