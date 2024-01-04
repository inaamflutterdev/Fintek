import 'controller/sign_up_controller.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 110.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 43.h,
                      right: 28.h,
                      bottom: 123.v,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 273.v,
                          width: 300.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: 159.v,
                                width: 268.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 17.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle159x268,
                                height: 159.v,
                                width: 268.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 159.v,
                                  width: 268.h,
                                  margin: EdgeInsets.only(bottom: 34.v),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle1,
                                        height: 159.v,
                                        width: 268.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              26.h, 6.v, 20.h, 58.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettings47x21,
                                                height: 47.v,
                                                width: 21.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 47.v),
                                              ),
                                              Spacer(
                                                flex: 45,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowLeft,
                                                height: 70.v,
                                                width: 7.h,
                                                margin:
                                                    EdgeInsets.only(top: 23.v),
                                              ),
                                              Spacer(
                                                flex: 54,
                                              ),
                                              Container(
                                                height: 70.v,
                                                width: 15.h,
                                                margin:
                                                    EdgeInsets.only(top: 23.v),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCursor,
                                                      height: 29.v,
                                                      width: 13.h,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 4.v),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft,
                                                      height: 70.v,
                                                      width: 7.h,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 73.v,
                                                width: 25.h,
                                                margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  bottom: 19.v,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Opacity(
                                                      opacity: 0.94,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup,
                                                        height: 73.v,
                                                        width: 1.h,
                                                        alignment: Alignment
                                                            .centerRight,
                                                        margin: EdgeInsets.only(
                                                            right: 7.h),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: 0.2,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSettings,
                                                        height: 18.v,
                                                        width: 25.h,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        margin: EdgeInsets.only(
                                                            bottom: 22.v),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.94,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 73.v,
                                  width: 1.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 86.h,
                                    top: 67.v,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 56.h,
                                  top: 75.v,
                                ),
                                child: _buildRecentOrders(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 55.h,
                                  top: 79.v,
                                ),
                                child: _buildUserProfile(
                                  userImage: ImageConstant.imgRectangle101x59,
                                ),
                              ),
                              Opacity(
                                opacity: 0.94,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 73.v,
                                  width: 1.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 57.v,
                                    right: 119.h,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.94,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 73.v,
                                  width: 1.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 129.h,
                                    top: 16.v,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.94,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 73.v,
                                  width: 1.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 89.v,
                                    right: 18.h,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.44,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroupPrimary,
                                  height: 21.v,
                                  width: 1.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 58.v,
                                    right: 80.h,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.44,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroupPrimary,
                                  height: 21.v,
                                  width: 1.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 36.v),
                                ),
                              ),
                              Opacity(
                                opacity: 0.44,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroupPrimary,
                                  height: 21.v,
                                  width: 1.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 85.h),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 75.v,
                                  right: 91.h,
                                ),
                                child: _buildRecentOrders(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 79.v,
                                  right: 97.h,
                                ),
                                child: _buildUserProfile(
                                  userImage: ImageConstant.imgRectangle2,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 58.v,
                                width: 44.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                  left: 70.h,
                                  top: 25.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 72.v,
                                  width: 62.h,
                                  margin: EdgeInsets.only(
                                    left: 56.h,
                                    top: 20.v,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 9.h,
                                    vertical: 7.v,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup16,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 57.v,
                                        width: 44.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 3.v,
                                                bottom: 23.v,
                                              ),
                                              child: _buildClientTestimonials(),
                                            ),
                                            SizedBox(
                                              height: 45.v,
                                              width: 35.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettingsYellow100,
                                                    height: 32.v,
                                                    width: 35.h,
                                                    alignment:
                                                        Alignment.topCenter,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClock,
                                                    height: 32.v,
                                                    width: 35.h,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 9.h,
                                                        top: 2.v,
                                                      ),
                                                      child: Text(
                                                        "lbl".tr,
                                                        style: CustomTextStyles
                                                            .headlineLargeRoboto,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSettingsPrimary,
                                  height: 30.v,
                                  width: 42.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 66.v),
                                ),
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsPrimary30x41,
                                  height: 30.v,
                                  width: 41.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 98.h),
                                ),
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsPrimary30x41,
                                  height: 30.v,
                                  width: 41.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 77.v,
                                    right: 66.h,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsPrimary18x25,
                                  height: 18.v,
                                  width: 25.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 115.h,
                                    top: 49.v,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSettings18x25,
                                  height: 18.v,
                                  width: 25.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 23.h,
                                    bottom: 96.v,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgUserGreen500,
                                height: 58.v,
                                width: 44.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 19.v,
                                  right: 91.h,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 72.v,
                                  width: 62.h,
                                  margin: EdgeInsets.only(
                                    top: 14.v,
                                    right: 87.h,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 9.h,
                                    vertical: 7.v,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup16,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgContrastGreenA20001,
                                        height: 57.v,
                                        width: 44.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 3.v,
                                                bottom: 23.v,
                                              ),
                                              child: _buildClientTestimonials(),
                                            ),
                                            SizedBox(
                                              height: 45.v,
                                              width: 35.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettingsYellow100,
                                                    height: 32.v,
                                                    width: 35.h,
                                                    alignment:
                                                        Alignment.topCenter,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClock,
                                                    height: 32.v,
                                                    width: 35.h,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgMusic,
                                                    height: 30.v,
                                                    width: 16.h,
                                                    alignment:
                                                        Alignment.topCenter,
                                                    margin: EdgeInsets.only(
                                                        top: 6.v),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 39.v),
                        Container(
                          width: 291.h,
                          margin: EdgeInsets.only(
                            left: 29.h,
                            right: 21.h,
                          ),
                          child: Text(
                            "msg_stay_on_top_of_your".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.displaySmall,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Container(
                          width: 319.h,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            right: 8.h,
                          ),
                          child: Text(
                            "msg_we_are_your_new".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.titleMediumGray80001.copyWith(
                              height: 1.29,
                            ),
                          ),
                        ),
                        SizedBox(height: 76.v),
                        CustomElevatedButton(
                          text: "lbl_create_account".tr,
                        ),
                        SizedBox(height: 17.v),
                        Text(
                          "lbl_login".tr,
                          style: CustomTextStyles.titleMediumPrimary,
                        ),
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

  /// Common widget
  Widget _buildRecentOrders() {
    return SizedBox(
      height: 37.v,
      width: 64.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 37.v,
            width: 64.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorGreenA20001,
            height: 27.v,
            width: 48.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserProfile({required String userImage}) {
    return SizedBox(
      height: 101.v,
      width: 59.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 101.v,
            width: 59.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 91.v,
              width: 53.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 31.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup15,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCursorWhiteA70001,
                height: 22.v,
                width: 17.h,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildClientTestimonials() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupWhiteA70001,
            height: 5.v,
            width: 2.h,
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupWhiteA70001,
            height: 5.v,
            width: 2.h,
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupWhiteA70001,
            height: 6.v,
            width: 3.h,
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}
