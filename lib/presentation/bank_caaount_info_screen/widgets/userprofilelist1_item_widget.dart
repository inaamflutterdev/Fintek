import '../controller/bank_caaount_info_controller.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<BankCaaountInfoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 47.adaptSize,
            width: 47.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                bottom: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 18.v),
                        child: Obx(
                          () => Text(
                            userprofilelist1ItemModelObj.bankName!.value,
                            style:
                                CustomTextStyles.titleMediumSFProDisplayGray700,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame3,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          bottom: 13.v,
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => Text(
                      userprofilelist1ItemModelObj.userName!.value,
                      style: CustomTextStyles.bodyMediumCatamaranBluegray900,
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
}
