import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/profile_screeen_page/models/profile_screeen_model.dart';

/// A controller class for the ProfileScreeenPage.
///
/// This class manages the state of the ProfileScreeenPage, including the
/// current profileScreeenModelObj
class ProfileScreeenController extends GetxController {
  ProfileScreeenController(this.profileScreeenModelObj);

  Rx<ProfileScreeenModel> profileScreeenModelObj;
}
