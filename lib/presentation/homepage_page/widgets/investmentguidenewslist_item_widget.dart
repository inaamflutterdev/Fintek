import '../controller/homepage_controller.dart';
import '../models/investmentguidenewslist_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InvestmentguidenewslistItemWidget extends StatelessWidget {
  InvestmentguidenewslistItemWidget(
    this.investmentguidenewslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InvestmentguidenewslistItemModel investmentguidenewslistItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    investmentguidenewslistItemModelObj.title!.value,
                    style: CustomTextStyles.titleMediumDMSansGray80001,
                  ),
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  width: 248.h,
                  child: Obx(
                    () => Text(
                      investmentguidenewslistItemModelObj.description!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray80002.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: investmentguidenewslistItemModelObj.image!.value,
            height: 61.adaptSize,
            width: 61.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            margin: EdgeInsets.only(
              left: 40.h,
              bottom: 23.v,
            ),
          ),
        ),
      ],
    );
  }
}
