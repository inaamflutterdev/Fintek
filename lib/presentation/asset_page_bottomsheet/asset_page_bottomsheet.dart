import '../asset_page_bottomsheet/widgets/transactions_item_widget.dart';
import 'controller/asset_page_controller.dart';
import 'models/transactions_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AssetPageBottomsheet extends StatelessWidget {
  AssetPageBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AssetPageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 26.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      "lbl_my_asset".tr,
                      style: CustomTextStyles.titleLarge_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 97.h),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Text(
              "msg_your_total_asset".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
            SizedBox(height: 8.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_n203_935".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                Container(
                  width: 40.h,
                  margin: EdgeInsets.only(
                    left: 39.h,
                    top: 9.v,
                    bottom: 13.v,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBxsUpvote1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_2".tr,
                          style:
                              CustomTextStyles.bodySmallSFProDisplayGreenA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.v),
            Text(
              "lbl_current_plans".tr,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 21.v),
            _buildPortfolio(),
            SizedBox(height: 27.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "lbl_see_all_plans".tr,
                style: CustomTextStyles.titleMediumSFProDisplayRedA200,
              ),
            ),
            SizedBox(height: 35.v),
            Text(
              "lbl_history".tr,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 24.v),
            _buildTransactions(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPortfolio() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 207.v,
        width: 354.h,
        decoration: AppDecoration.gradientYellowToYellow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage4207x349,
              height: 207.v,
              width: 349.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  top: 43.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_gold".tr,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(height: 6.v),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        "lbl_30_return".tr,
                        style: CustomTextStyles.labelLargeSFProTextOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactions() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 7.0.v),
            child: SizedBox(
              width: 346.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray300,
              ),
            ),
          );
        },
        itemCount: controller
            .assetPageModelObj.value.transactionsItemList.value.length,
        itemBuilder: (context, index) {
          TransactionsItemModel model = controller
              .assetPageModelObj.value.transactionsItemList.value[index];
          return TransactionsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
