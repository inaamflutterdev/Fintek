import '../controller/creatte_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatteAccountScreen.
///
/// This class ensures that the CreatteAccountController is created when the
/// CreatteAccountScreen is first loaded.
class CreatteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatteAccountController());
  }
}
