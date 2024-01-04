import '../controller/bank_caaount_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BankCaaountInfoScreen.
///
/// This class ensures that the BankCaaountInfoController is created when the
/// BankCaaountInfoScreen is first loaded.
class BankCaaountInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankCaaountInfoController());
  }
}
