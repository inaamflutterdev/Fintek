import '../controller/notification_controller.dart';
import '../models/page_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageItemWidget extends StatelessWidget {
  PageItemWidget(
    this.pageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PageItemModel pageItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: pageItemModelObj.stockImage!.value,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Container(
                width: 193.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  top: 9.v,
                  bottom: 19.v,
                ),
                child: Obx(
                  () => Text(
                    pageItemModelObj.stockText!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              bottom: 52.v,
            ),
            child: Obx(
              () => Text(
                pageItemModelObj.timeText!.value,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
