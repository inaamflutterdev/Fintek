import '../bank_caaount_info_screen/widgets/userprofilelist1_item_widget.dart';
import 'controller/bank_caaount_info_controller.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BankCaaountInfoScreen extends GetWidget<BankCaaountInfoController> {
  const BankCaaountInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 100.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftBlack900,
                                height: 12.v,
                                width: 6.h,
                                margin: EdgeInsets.only(top: 6.v, bottom: 2.v),
                                onTap: () {
                                  onTapImgArrowLeft();
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 95.h),
                                child: Text("msg_bank_of_account".tr,
                                    style: CustomTextStyles
                                        .titleMediumSFProDisplayBlack900))
                          ])),
                      SizedBox(height: 26.v),
                      _buildUserProfileList()
                    ])),
            bottomNavigationBar: _buildAddAccountButton()));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 29.v);
                },
                itemCount: controller.bankCaaountInfoModelObj.value
                    .userprofilelist1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofilelist1ItemModel model = controller
                      .bankCaaountInfoModelObj
                      .value
                      .userprofilelist1ItemList
                      .value[index];
                  return Userprofilelist1ItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildAddAccountButton() {
    return CustomElevatedButton(
        text: "lbl_add_account".tr,
        margin: EdgeInsets.only(left: 30.h, right: 32.h, bottom: 42.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
