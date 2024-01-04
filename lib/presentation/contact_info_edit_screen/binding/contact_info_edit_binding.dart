import '../controller/contact_info_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContactInfoEditScreen.
///
/// This class ensures that the ContactInfoEditController is created when the
/// ContactInfoEditScreen is first loaded.
class ContactInfoEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactInfoEditController());
  }
}
