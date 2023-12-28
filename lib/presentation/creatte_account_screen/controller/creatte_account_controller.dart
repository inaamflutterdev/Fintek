import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/creatte_account_screen/models/creatte_account_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreatteAccountScreen.
///
/// This class manages the state of the CreatteAccountScreen, including the
/// current creatteAccountModelObj
class CreatteAccountController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<CreatteAccountModel> creatteAccountModelObj = CreatteAccountModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
  }
}
