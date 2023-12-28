import '../notification_screen/widgets/page_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/page_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildNotificationSection()))
                ]))));
  }

  /// Section Widget
  Widget _buildNotificationSection() {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 29.h, bottom: 404.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftBlack900,
              height: 12.v,
              width: 6.h,
              onTap: () {
                onTapImgArrowLeft();
              }),
          SizedBox(height: 22.v),
          Text("lbl_notification".tr, style: theme.textTheme.displaySmall),
          SizedBox(height: 44.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Opacity(
                        opacity: 0.5,
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 11.5.v),
                            child: SizedBox(
                                width: 351.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color:
                                        appTheme.black900.withOpacity(0.53)))));
                  },
                  itemCount: controller
                      .notificationModelObj.value.pageItemList.value.length,
                  itemBuilder: (context, index) {
                    PageItemModel model = controller
                        .notificationModelObj.value.pageItemList.value[index];
                    return PageItemWidget(model);
                  })))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
