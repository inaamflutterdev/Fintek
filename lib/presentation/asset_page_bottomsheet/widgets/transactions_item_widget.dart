import '../controller/asset_page_controller.dart';
import '../models/transactions_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  TransactionsItemWidget(
    this.transactionsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionsItemModel transactionsItemModelObj;

  var controller = Get.find<AssetPageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 11.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  transactionsItemModelObj.labelNumber!.value,
                  style: CustomTextStyles.titleMediumDMSansBlack900,
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  transactionsItemModelObj.descriptionLabel!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 26.v,
            bottom: 11.v,
          ),
          child: Obx(
            () => Text(
              transactionsItemModelObj.dateLabel!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
