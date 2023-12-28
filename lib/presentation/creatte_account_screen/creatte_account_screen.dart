import 'controller/creatte_account_controller.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/core/utils/validation_functions.dart';
import 'package:fintek/widgets/custom_elevated_button.dart';
import 'package:fintek/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreatteAccountScreen extends GetWidget<CreatteAccountController> {
  CreatteAccountScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 27.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, right: 32.h, bottom: 316.v),
                                  child: Column(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftBlack900,
                                        height: 12.v,
                                        width: 6.h,
                                        alignment: Alignment.centerLeft,
                                        onTap: () {
                                          onTapImgArrowLeft();
                                        }),
                                    SizedBox(height: 21.v),
                                    Text("msg_create_an_account".tr,
                                        style: theme.textTheme.displaySmall),
                                    SizedBox(height: 9.v),
                                    Text("msg_invest_and_double".tr,
                                        style: CustomTextStyles
                                            .titleMediumGray80001),
                                    SizedBox(height: 86.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, right: 4.h),
                                        child: CustomTextFormField(
                                            controller:
                                                controller.fullNameController,
                                            hintText: "lbl_full_name".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeSFProTextGray600,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "err_msg_please_enter_valid_text"
                                                    .tr;
                                              }
                                              return null;
                                            })),
                                    SizedBox(height: 18.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, right: 4.h),
                                        child: CustomTextFormField(
                                            controller:
                                                controller.emailController,
                                            hintText: "lbl_email_address".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeSFProTextGray600,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            })),
                                    SizedBox(height: 37.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 31.h),
                                            child: Text("lbl_password".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeSFProTextGray600))),
                                    SizedBox(height: 32.v),
                                    CustomElevatedButton(
                                        text: "lbl_create_account".tr,
                                        margin: EdgeInsets.only(left: 10.h)),
                                    SizedBox(height: 44.v),
                                    Text("msg_already_have_an".tr,
                                        style:
                                            CustomTextStyles.titleMediumPrimary)
                                  ]))))
                    ])))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
