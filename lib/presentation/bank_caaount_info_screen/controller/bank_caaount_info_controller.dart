import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/bank_caaount_info_screen/models/bank_caaount_info_model.dart';

/// A controller class for the BankCaaountInfoScreen.
///
/// This class manages the state of the BankCaaountInfoScreen, including the
/// current bankCaaountInfoModelObj
class BankCaaountInfoController extends GetxController {
  Rx<BankCaaountInfoModel> bankCaaountInfoModelObj = BankCaaountInfoModel().obs;
}
