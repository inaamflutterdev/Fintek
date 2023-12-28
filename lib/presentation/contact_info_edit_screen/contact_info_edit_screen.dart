import '../contact_info_edit_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/contact_info_edit_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ContactInfoEditScreen extends GetWidget<ContactInfoEditController> {
  const ContactInfoEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 29.h, right: 29.h, bottom: 186.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowLeftBlack900,
                                          height: 12.v,
                                          width: 6.h,
                                          margin: EdgeInsets.only(
                                              top: 6.v, bottom: 2.v),
                                          onTap: () {
                                            onTapImgArrowLeft();
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 125.h),
                                          child: Text("lbl_contact_info2".tr,
                                              style: CustomTextStyles
                                                  .titleMediumSFProDisplayBlack900))
                                    ]),
                                    SizedBox(height: 48.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 150.adaptSize,
                                            width: 150.adaptSize,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse741150x150,
                                                      height: 150.adaptSize,
                                                      width: 150.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              75.h),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEdit2,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                    SizedBox(height: 17.v),
                                    _buildUserProfileList(),
                                    SizedBox(height: 33.v),
                                    _buildContactInfoEditRow(),
                                    SizedBox(height: 5.v),
                                    Opacity(
                                        opacity: 0.5,
                                        child: Divider(indent: 1.h)),
                                    SizedBox(height: 33.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("lbl_phone_number".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: CustomTextFormField(
                                            controller: controller
                                                .phoneNumberController,
                                            hintText: "lbl2".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .underLineBlack)),
                                    SizedBox(height: 18.v),
                                    Container(
                                        height: 46.v,
                                        width: 41.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text("lbl_address".tr,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text("lbl2".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumCatamaran))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 33.v);
            },
            itemCount: controller.contactInfoEditModelObj.value
                .userprofilelistItemList.value.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = controller
                  .contactInfoEditModelObj
                  .value
                  .userprofilelistItemList
                  .value[index];
              return UserprofilelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildContactInfoEditRow() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("lbl_email".tr, style: theme.textTheme.bodySmall),
                SizedBox(height: 1.v),
                Text("msg_warren_buff_invest_ai".tr,
                    style: theme.textTheme.bodyLarge)
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 24.v),
                  child:
                      Text("lbl_change".tr, style: theme.textTheme.labelMedium))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
