import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/contact_info_edit_screen/models/contact_info_edit_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContactInfoEditScreen.
///
/// This class manages the state of the ContactInfoEditScreen, including the
/// current contactInfoEditModelObj
class ContactInfoEditController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<ContactInfoEditModel> contactInfoEditModelObj = ContactInfoEditModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
