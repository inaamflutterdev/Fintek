import '../homepage_page/widgets/cardstocklist_item_widget.dart';
import '../homepage_page/widgets/investmentguidenewslist_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/cardstocklist_item_model.dart';
import 'models/homepage_model.dart';
import 'models/investmentguidenewslist_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray100,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMenuAndNotification(),
                        SizedBox(height: 21.v),
                        Text(
                          "msg_welcome_jessie".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        SizedBox(height: 31.v),
                        _buildPageTitleAndTotalAsset(),
                        SizedBox(height: 19.v),
                        _buildBestPlansSection(),
                        SizedBox(height: 21.v),
                        _buildCardStockList(),
                        SizedBox(height: 48.v),
                        Text(
                          "msg_investment_guide".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 19.v),
                        _buildInvestmentGuideNewsList(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuAndNotification() {
    return Padding(
      padding: EdgeInsets.only(right: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenu,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotification1,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPageTitleAndTotalAsset() {
    return SizedBox(
      height: 146.v,
      width: 354.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 116.v,
                width: 310.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.gradientTealToGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_your_total_asset".tr,
                      style: CustomTextStyles.titleMediumWhiteA70001Medium,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "lbl_n203_935".tr,
                              style: CustomTextStyles.headlineLargeWhiteA70001,
                            ),
                          ),
                          CustomElevatedButton(
                            height: 40.v,
                            width: 125.h,
                            text: "lbl_invest_now".tr,
                            buttonStyle: CustomButtonStyles.fillWhiteA,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestPlansSection() {
    return Padding(
      padding: EdgeInsets.only(right: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_best_plans".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleMediumSFProDisplayRedA200,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardStockList() {
    return SizedBox(
      height: 170.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: controller
              .homepageModelObj.value.cardstocklistItemList.value.length,
          itemBuilder: (context, index) {
            CardstocklistItemModel model = controller
                .homepageModelObj.value.cardstocklistItemList.value[index];
            return CardstocklistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInvestmentGuideNewsList() {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.v),
                child: SizedBox(
                  width: 346.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray800.withOpacity(0.42),
                  ),
                ),
              ),
            );
          },
          itemCount: controller.homepageModelObj.value
              .investmentguidenewslistItemList.value.length,
          itemBuilder: (context, index) {
            InvestmentguidenewslistItemModel model = controller.homepageModelObj
                .value.investmentguidenewslistItemList.value[index];
            return InvestmentguidenewslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
