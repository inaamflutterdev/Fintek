import 'controller/profile_screeen_controller.dart';
import 'models/profile_screeen_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreeenPage extends StatelessWidget {
  ProfileScreeenPage({Key? key}) : super(key: key);

  ProfileScreeenController controller =
      Get.put(ProfileScreeenController(ProfileScreeenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftBlack900,
                                        height: 12.v,
                                        width: 6.h,
                                        onTap: () {
                                          onTapImgArrowLeft();
                                        }),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("lbl_profile".tr,
                                            style:
                                                theme.textTheme.displaySmall)),
                                    SizedBox(height: 29.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 150.v,
                                            width: 282.h,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse741,
                                                      height: 150.adaptSize,
                                                      width: 150.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              75.h),
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle4,
                                                      height: 60.v,
                                                      width: 190.h,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 7.v))
                                                ]))),
                                    SizedBox(height: 19.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105.h),
                                        child: Text("lbl_jonas_macroni".tr,
                                            style: CustomTextStyles
                                                .titleLargeSFCompactDisplay)),
                                    SizedBox(height: 4.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 152.h),
                                        child: Text("lbl_expert".tr,
                                            style: CustomTextStyles
                                                .bodyLargeSFProTextBlack900)),
                                    SizedBox(height: 24.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 30.h),
                                        child: _buildThirty(
                                            cameraImage:
                                                ImageConstant.imgContact,
                                            sourceOfFundingText:
                                                "lbl_contact_info".tr)),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 30.h),
                                        child: _buildThirty(
                                            cameraImage:
                                                ImageConstant.imgCamera,
                                            sourceOfFundingText:
                                                "msg_source_of_funding".tr)),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 30.h),
                                        child: _buildThirty(
                                            cameraImage: ImageConstant.imgHome,
                                            sourceOfFundingText:
                                                "msg_bank_account_info".tr)),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 30.h),
                                        child: _buildThirty(
                                            cameraImage: ImageConstant
                                                .imgCameraBlueGray900,
                                            sourceOfFundingText:
                                                "lbl_document_info".tr)),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 30.h),
                                        child: _buildThirty(
                                            cameraImage:
                                                ImageConstant.imgSearch,
                                            sourceOfFundingText:
                                                "lbl_settings".tr))
                                  ]))))
                ]))));
  }

  /// Common widget
  Widget _buildThirty({
    required String cameraImage,
    required String sourceOfFundingText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: cameraImage,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Spacer(flex: 40),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(sourceOfFundingText,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.blueGray900))),
          Spacer(flex: 59),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 14.v,
              width: 6.h,
              margin: EdgeInsets.only(top: 5.v, right: 16.h, bottom: 5.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
